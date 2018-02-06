package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMName;
import com.lxcs.mybatis.bean.auto.CMNameExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMNameMapper {
    int countByExample(CMNameExample example);

    int deleteByExample(CMNameExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CMName record);

    int insertSelective(CMName record);

    List<CMName> selectByExample(CMNameExample example);

    CMName selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CMName record, @Param("example") CMNameExample example);

    int updateByExample(@Param("record") CMName record, @Param("example") CMNameExample example);

    int updateByPrimaryKeySelective(CMName record);

    int updateByPrimaryKey(CMName record);
}