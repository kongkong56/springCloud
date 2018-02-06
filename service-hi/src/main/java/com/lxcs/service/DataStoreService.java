/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2014-2016 abel533@gmail.com
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package com.lxcs.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lxcs.es.Product;
import com.lxcs.es.ProductRepository;
import com.lxcs.mybatis.bean.auto.CMUser;
import com.lxcs.mybatis.bean.auto.CMUserExample;
import com.lxcs.util.string.GetterUtil;
import org.apache.commons.lang3.StringUtils;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.client.Client;
import org.elasticsearch.common.xcontent.XContentBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.aggregation.Aggregation;
import org.springframework.data.mongodb.core.aggregation.AggregationResults;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

import static org.elasticsearch.common.xcontent.XContentFactory.jsonBuilder;
import static org.springframework.data.mongodb.core.aggregation.Aggregation.group;
import static org.springframework.data.mongodb.core.aggregation.Aggregation.match;

/**
 */
@Service
public class DataStoreService extends BaseService implements Serializable {

    int PAGE_SIZE = 15; //默认分页大小

    int PAGE_NUMBER = 0; //默认当前分页

    String SCORE_MODE_SUM = "sum"; //权重分求和模式

    Float MIN_SCORE = 10.0F; //由于无相关性的分值默认为1， 设置权重分最小值为10

    @Autowired
    private ProductRepository repository;
    @Autowired
    private MongoTemplate mongoTemplate;
    @Autowired
    private ElasticsearchTemplate elasticsearchTemplate;

    public List<Map> getMongoRecordList(Query query, String mongoLxcsCase) {
        return mongoTemplate.find(query,Map.class,mongoLxcsCase);
    }


    public Map getSumAndCountCase(String idNo, String customerId) {
        // 选中多少件
        Map<String, String> result = new HashMap<String, String>();
        Query query = new Query();
        Criteria criteria = new Criteria();
        List<Criteria> criteriaList = new ArrayList<Criteria>();
        if (StringUtils.isNotEmpty(customerId)) {
            criteriaList.add(Criteria.where("customerId").is(customerId));
        }
        // 身份证
        if (StringUtils.isNotEmpty(idNo)) {
            criteriaList.add(Criteria.where("idNo").is(idNo));
        }
        if (criteriaList.size() > 0) {
            criteria.andOperator(criteriaList.toArray(new Criteria[criteriaList.size()]));
        }

        query.addCriteria(criteria);
        Long totalCount = this.mongoTemplate.count(query, "lxcs_case");
        result.put("count", String.valueOf(totalCount));
        //重复共案不查钱
        if(customerId==null){
            Aggregation aggregation = Aggregation.newAggregation(match(criteria), group().sum("caseMoney").as("total")
                            .sum("repayAllmoneyYes").as("yesTotle")
                            .sum("repayAllmoneyWait").as("waitTotle"));
            AggregationResults<Map> ar = mongoTemplate.aggregate(aggregation, "lxcs_case", Map.class);
            List<Map> list = ar.getMappedResults();
            if (list.size() > 0) {
                result.put("total", new BigDecimal(String.valueOf(list.get(0).get("total"))).toPlainString());
                result.put("yesTotle", new BigDecimal(String.valueOf(list.get(0).get("yesTotle"))).toPlainString());
                result.put("waitTotle", new BigDecimal(String.valueOf(list.get(0).get("waitTotle"))).toPlainString());
            }
        }

        return result;
    }

    public void searchHelper() throws IOException {

        //节点客户端
        // on startup
//    Node node = nodeBuilder().clusterName("syncwt-es").client(true).node();
//    Client nodeClient = node.client();

        //传输客户端
//    Settings settings = Settings.settingsBuilder().build();
//    Client transportClient = TransportClient.builder().settings(settings).build();

       /* Client transportClient = elasticsearchTemplate.getClient();

        Customer customer = new Customer("Alice", "Smith");

        // instance a json mapper
        ObjectMapper mapper = new ObjectMapper(); // create once, reuse

        // generate json
        String json = mapper.writeValueAsString(customer);
        System.out.println("--------------------------------jackson mapper");
        System.out.println(json);

        XContentBuilder builder = jsonBuilder()
                .startObject()
                .field("firstName", "Alice")
                .field("latName", "Smith")
                .endObject();
        System.out.println("--------------------------------jsonBuilder");
        System.out.println(builder.string());

        IndexResponse response = transportClient.prepareIndex("es-customer", "customer")
                .setSource(jsonBuilder()
                        .startObject()
                        .field("firstName", "Alice")
                        .field("latName", "Smith")
                        .endObject()
                )
                .execute()
                .actionGet();

        System.out.println("--------------------------------response");
        System.out.println(response.toString());*/

        // on shutdown
//    node.close();
//    nodeClient.close();
       /* transportClient.close();*/

    }

    public void updateMongoRecord(Query query, Map paramMap, String collection) {
        Update update = new Update();
        paramMap.forEach((k, v) -> {
            if (v != null) {
                update.set(GetterUtil.getString(k), v);
            }
        });
        mongoTemplate.updateMulti(query, update, collection);
    }

    public void insertESData(Map product) throws Exception {
        Client transportClient = elasticsearchTemplate.getClient();
        // instance a json mapper
        ObjectMapper mapper = new ObjectMapper(); // create once, reuse

        // generate json
        String json = mapper.writeValueAsString(product);
        System.out.println("--------------------------------jackson mapper");
        System.out.println(json);

        XContentBuilder builder = jsonBuilder().map(product)
                /*.startObject()
                .field("firstName", "Alice")
                .field("latName", "Smith")
                .endObject()*/;
        System.out.println("--------------------------------jsonBuilder");
        System.out.println(builder.string());

        IndexResponse response = transportClient.prepareIndex("es-product", "product")
                .setSource(builder)
                .execute()
                .actionGet();
        System.out.println("--------------------------------response");
        System.out.println(response.toString());
        transportClient.close();

    }
    public void saveCustomers(Product product) throws IOException {
        repository.save(product);
    }

    public List<Product> fetchAllCustomers() throws IOException {
        System.out.println("Customers found with findAll():");
        System.out.println("-------------------------------");
        Iterable<Product> productList=repository.findAll();
        if (productList!=null){
            List<Product> newList=new ArrayList<>();
            for (Product product : productList) {
                System.out.println(product);
                newList.add(product);
            }
            return newList;
        }else{
            return null;
        }

    }

    public List<Product> fetchIndividualCustomers(String name) {
        System.out.println("Customer found with findByFirstName('Alice'):");
        System.out.println("--------------------------------");
        Sort sort=new Sort(Sort.Direction.DESC,"updatedTime");
        Pageable pageable = new PageRequest(0, 50,sort);
        List<Product> newList=repository.findByTitleLike("*"+name);
        System.out.println(newList);
        for (Product customer : newList) {
            System.out.println(customer);
        }
        return newList;
    }
    public List<CMUser> getUserList() {
        return cmuserMapper.selectByExample(new CMUserExample());
    }

}
