package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMUserMain;
import com.lxcs.mybatis.bean.auto.CMUserMainExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMUserMainMapper {
    int countByExample(CMUserMainExample example);

    int deleteByExample(CMUserMainExample example);

    int deleteByPrimaryKey(String id);

    int insert(CMUserMain record);

    int insertSelective(CMUserMain record);

    List<CMUserMain> selectByExample(CMUserMainExample example);

    CMUserMain selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") CMUserMain record, @Param("example") CMUserMainExample example);

    int updateByExample(@Param("record") CMUserMain record, @Param("example") CMUserMainExample example);

    int updateByPrimaryKeySelective(CMUserMain record);

    int updateByPrimaryKey(CMUserMain record);
}