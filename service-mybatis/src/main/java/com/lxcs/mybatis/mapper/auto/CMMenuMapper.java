package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMMenu;
import com.lxcs.mybatis.bean.auto.CMMenuExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMMenuMapper {
    int countByExample(CMMenuExample example);

    int deleteByExample(CMMenuExample example);

    int deleteByPrimaryKey(String menuId);

    int insert(CMMenu record);

    int insertSelective(CMMenu record);

    List<CMMenu> selectByExample(CMMenuExample example);

    CMMenu selectByPrimaryKey(String menuId);

    int updateByExampleSelective(@Param("record") CMMenu record, @Param("example") CMMenuExample example);

    int updateByExample(@Param("record") CMMenu record, @Param("example") CMMenuExample example);

    int updateByPrimaryKeySelective(CMMenu record);

    int updateByPrimaryKey(CMMenu record);
}