package com.lxcs.web;

import com.lxcs.mybatis.mapper.ext.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public abstract class CustomMapper extends AutoMapper {

    @Autowired
    protected ExtMenuMapper extMenuMapper;

    @Autowired
    protected ExtPermissionMapper extPermissionMapper;

    @Autowired
    protected ExtUserMapper extUserMapper;

    @Autowired
    protected ExtAreaMapper extAreaMapper;

    @Autowired
    protected ExtUserMainMapper extUserMainMapper;

}
