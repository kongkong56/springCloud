package com.forezp;

import com.alibaba.fastjson.JSONObject;
import com.lxcs.es.Product;
import com.lxcs.mybatis.bean.auto.CMUser;
import com.lxcs.service.DataStoreService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by shuai on 2017/12/26.
 */
@Slf4j
@RestController
public class ServiceApi {
    @Autowired
    private DataStoreService dataStoreService;

    @RequestMapping("/hi")
    public String hi(HttpServletResponse response) throws IOException {
        response.setHeader("Access-Control-Allow-Origin","*");
       List<CMUser> userList=dataStoreService.getUserList();
       /* response.setHeader("Access-Control-Allow-Methods","POST");
        response.setHeader("Access-Control-Allow-Headers","x-requested-with,content-type");*/
        return JSONObject.toJSONString(userList);
    }
    @RequestMapping("/hi1")
    public String hi1(HttpServletResponse response) throws IOException {
        return "1234";
    }
    @RequestMapping("/all")
    public String home(HttpServletResponse response) throws IOException {
        response.setHeader("Access-Control-Allow-Origin","*");
        List<Product> productList=dataStoreService.fetchAllCustomers();
        return JSONObject.toJSONString(productList);
    }
    @RequestMapping("/findByTitle")
    public String findByTitle(@RequestParam String title, HttpServletResponse response) throws IOException {
        response.setHeader("Access-Control-Allow-Origin","*");
        List<Product> productList=dataStoreService.fetchIndividualCustomers(title);
        return JSONObject.toJSONString(productList);
    }
}
