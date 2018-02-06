package com.forezp.controller;

import com.forezp.service.SchedualServiceHi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * Created by shuai on 2017/12/12.
 */
@Controller
public class HiController {
    @Autowired
    SchedualServiceHi schedualServiceHi;
    @RequestMapping(value = "/hi",method = RequestMethod.GET)
    public String sayHi(@RequestParam String name){
        return schedualServiceHi.sayHiFromClientOne(name);
    }


    @RequestMapping("/helloJsp")
    public String helloJsp(Map<String,Object> map){

        System.out.println("HelloController.helloJsp().hello");

        return "helloJsp";

    }
    @RequestMapping("/testJsp")
    public String testJsp(Map<String,Object> map){

        System.out.println("HelloController.helloJsp().hello");

        return "/test/testJsp";

    }
}
