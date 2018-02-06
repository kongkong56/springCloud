package com.lxcs.mybatis.mapper.ext;

import com.lxcs.mybatis.bean.auto.CMUserMain;
import com.lxcs.mybatis.bean.ext.ExtUserMain;

import java.util.List;

public interface ExtUserMainMapper {
    List<ExtUserMain> selectByExample(ExtUserMain example);
}