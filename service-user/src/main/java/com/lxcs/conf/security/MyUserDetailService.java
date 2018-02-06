package com.lxcs.conf.security;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.lxcs.mybatis.bean.auto.CMRole;
import com.lxcs.mybatis.bean.ext.ExtUserModel;
import com.lxcs.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.config.core.GrantedAuthorityDefaults;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class MyUserDetailService implements UserDetailsService {
    @Autowired
    private UserService userService;
    //登陆验证时，通过username获取用户的所有权限信息，
    //并返回User放到spring的全局缓存SecurityContextHolder中，以供授权器使用
    public UserDetails loadUserByUsername(String username)
            throws UsernameNotFoundException, DataAccessException {
        ExtUserModel extUserModel=  userService.getExtUserByUserId(username);
        if(extUserModel == null){
            throw new UsernameNotFoundException("用户名不存在");
        }
        List<CMRole> roleList= userService.getRoleListByUserId(extUserModel.getUserId());
        Collection<GrantedAuthority> auths = new ArrayList<GrantedAuthority>();
        //用于添加用户的权限。只要把用户权限添加到authorities 就万事大吉。
        for(CMRole role:roleList)
        {
            auths.add(new SimpleGrantedAuthority(role.getRole()));
            System.out.println(role.getRole());
        }

        User user = new User(username, extUserModel.getPassword(), true,
                true, true, true, auths);
        return user;
    }
}