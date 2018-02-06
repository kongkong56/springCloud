package com.lxcs.batch;

import com.lxcs.es.Product;
import com.lxcs.mybatis.bean.auto.*;
import com.lxcs.service.DataStoreService;
import com.lxcs.util.date.DateUtils;
import com.lxcs.util.date.EnumDateStyle;
import com.lxcs.util.enums.StatusEnums;
import com.lxcs.util.sql.RdTbNameHandler;
import com.lxcs.util.string.GetterUtil;
import com.lxcs.util.string.PinyinUtil;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.data.domain.Sort;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.*;

/**
 * 数据仓库任务
 *
 * @author zxs
 */
@Slf4j
@Component
@Configurable
@EnableScheduling
public class DataStoreTask {

	@Autowired
	private DataStoreService dataStoreService;

	@Autowired
	private RdTbNameHandler rdTbNameHandler;

	//每1分钟执行一次
	@Scheduled(cron = "0 10 10 * * ?")
	public void dataStoreTaskMethod() throws InterruptedException {
		System.out.println("----------------mongo同步到es定时任务Start-------------");
		//根据案件编号删除此案数据的表
			List<Map> result = new ArrayList<>();
			for (int i = 1;; i++) {
				Query query1 = new Query();
				if (result != null && result.size() > 0) {
					query1.addCriteria(new Criteria("_id")
							.gt(new ObjectId(GetterUtil.getString(result.get(result.size() - 1).get("_id")))));
				}
				query1.limit(5000);
				Long lastWeekTime=DateUtils.addDay(new Date(),-7).getTime()/1000;//一周前的时间
				query1.addCriteria(new Criteria().orOperator(
						new Criteria("updated_time").gte(lastWeekTime),
						new Criteria("is_sys").exists(false)));
				query1.with(new Sort(new Sort.Order(Sort.Direction.ASC, "_id")));
				result = this.dataStoreService.getMongoRecordList(query1, "t_product");
				if (result != null && result.size() > 0) {
					System.out.println("=============查询出："+result.size()+"条,开始循环插入");
					for (Map caseInfo : result) {
						String	_id=GetterUtil.getString(caseInfo.get("_id")); //_id
						String	url=GetterUtil.getString(caseInfo.get("url")); //商品url
						String	md5_url=GetterUtil.getString(caseInfo.get("md5_url"));//MD5加密后的url
						String	title=GetterUtil.getString(caseInfo.get("title"));//商品名称
						String	website_id=GetterUtil.getString(caseInfo.get("website_id"));//来源网站
						String	price=GetterUtil.getString(caseInfo.get("price")); //价格（用户付款的最终价格）
						String	page_price=GetterUtil.getString(caseInfo.get("page_price")); //页面标注价格
						String	old_price=GetterUtil.getString(caseInfo.get("old_price")); //页面标注的原价，没有原价时与price相同
						String	image_url=GetterUtil.getString(caseInfo.get("image_url"));//商品图片
						String	detail=GetterUtil.getString(caseInfo.get("detail"));//详情
						String	entered_time=GetterUtil.getString(caseInfo.get("entered_time"));//进入时间
						String	is_deleted=GetterUtil.getString(caseInfo.get("is_deleted"));//是否删除
						String	updated_time=GetterUtil.getString(caseInfo.get("updated_time"));//更新时间
						String	brand_id=GetterUtil.getString(caseInfo.get("brand_id")); //品牌ID
						String	category_location_id=GetterUtil.getString(caseInfo.get("category_location_id")); //品类层级ID
						String	is_sold_out=GetterUtil.getString(caseInfo.get("is_sold_out")); //是否有货
						//不采集第三方商品（只采集品牌商的商品）
						String	sku_id=GetterUtil.getString(caseInfo.get("idNo")); //商品唯一sku码
						String	style_id=GetterUtil.getString(caseInfo.get("idNo"));//风格ID
						String	is_sys=GetterUtil.getString(caseInfo.get("is_sys")); //是否已同步 1 已同步

						if(StringUtils.isEmpty(url)||StringUtils.isEmpty(md5_url)||StringUtils.isEmpty(_id)){
								continue;
						}
						//更新到es里
						Product product=new Product();
						product.setMid(_id);
						product.setUrl(url);
						product.setMd5Url(md5_url);
						product.setTitle(title);
						product.setWebsiteId(website_id);
						product.setPrice(price);
						product.setPagePrice(page_price);
						product.setOldPrice(old_price);
						product.setImageUrl(image_url);
						product.setDetail(detail);
						product.setEnteredTime(entered_time);
						product.setIsDeleted(is_deleted);
						product.setUpdatedTime(updated_time);
						product.setBrandId(brand_id);
						product.setCategoryLocationId(category_location_id);
						product.setIsSoldOut(is_sold_out);
						product.setSkuId(sku_id);
						product.setStyleId(style_id);
						try {
							//dataStoreService.insertESData(caseInfo);
							dataStoreService.saveCustomers(product);
						} catch (Exception e) {
							e.printStackTrace();
							continue;
						}
						//更新mongo里数据状态为已同步
						if (is_sys==null||is_sys.equals("0")){
							Map paramMap=new HashMap();
							Query query = new Query();
							query.addCriteria(new Criteria("_id").is(new ObjectId(GetterUtil.getString(caseInfo.get("_id")))));
							paramMap.put("is_sys","1");
							dataStoreService.updateMongoRecord(query,paramMap, "t_product");
						}
					}
				} else {
					break;
				}
			}
		System.out.println("----------------mongo同步到es任务end-------------");
	}
}
