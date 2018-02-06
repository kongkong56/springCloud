package com.forezp;

import com.alibaba.fastjson.JSONObject;
import com.lxcs.mybatis.bean.auto.CMRole;
import com.lxcs.mybatis.bean.ext.ExtUserModel;
import com.lxcs.service.UserService;
import com.lxcs.util.security.MD5Util;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
 * Created by shuai on 2017/12/26.
 */
@Slf4j
@RestController
public class ServiceApi {
    @Autowired
    private UserService userService;
    @RequestMapping("/")
    public String init(HttpServletResponse response) throws IOException {
        response.setHeader("Access-Control-Allow-Origin","*");
       /* response.setHeader("Access-Control-Allow-Methods","POST");
        response.setHeader("Access-Control-Allow-Headers","x-requested-with,content-type");*/
        SecurityContext context=SecurityContextHolder.getContext();
        return JSONObject.toJSONString(context.getAuthentication().getDetails());
    }
    @RequestMapping("/login")
    public String login(HttpServletResponse response,String username
            ,@RequestParam(value = "error",required = false) boolean error
            ,@RequestParam(value = "logout",required = false) boolean logout,String password) throws IOException {
        response.setHeader("Access-Control-Allow-Origin","*");
        ExtUserModel userModel= userService.getExtUserByUserId(username);
        if(userModel==null|| StringUtils.isEmpty(userModel.getPassword())||!userModel.getPassword().equals(MD5Util.string2MD5(password))){
            return "用户名或密码不正确";
        }
        List<CMRole> roleList= userService.getRoleListByUserId(userModel.getUserId());
        Collection<GrantedAuthority> auths = new ArrayList<GrantedAuthority>();
        if (roleList!=null&&roleList.size()>0) {
            for(CMRole role:roleList)
            {
                auths.add(new SimpleGrantedAuthority(role.getRole()));
                System.out.println(role.getRole());
            }
        }
        SecurityContext context=SecurityContextHolder.getContext();
        UsernamePasswordAuthenticationToken usertoken=new UsernamePasswordAuthenticationToken(username,password,auths);
        usertoken.setDetails(userModel);
        context.setAuthentication(usertoken);
        ExtUserModel userModel1= (ExtUserModel)context.getAuthentication().getDetails();
        //如果已经登陆跳转到个人首页
       Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if(authentication!=null&&
                !authentication.getPrincipal().equals("anonymousUser")&&
                authentication.isAuthenticated())
            System.out.println("me");
        if(error==true)
            System.out.println(error);
        if(logout==true)
            System.out.println(logout);
       // return "login";
        return JSONObject.toJSONString(userModel1);
    }

    @RequestMapping("/user")
    public String hi(HttpServletResponse response,String username,String password) throws IOException {
        response.setHeader("Access-Control-Allow-Origin","*");
       /* response.setHeader("Access-Control-Allow-Methods","POST");
        response.setHeader("Access-Control-Allow-Headers","x-requested-with,content-type");*/
        Object context=SecurityContextHolder.getContext().getAuthentication().getDetails();
        String name=SecurityContextHolder.getContext().getAuthentication().getName();
        Object credentials=SecurityContextHolder.getContext().getAuthentication().getCredentials();
        System.out.println(name);
        System.out.println(credentials);
        return JSONObject.toJSONString(context);
    }
}
