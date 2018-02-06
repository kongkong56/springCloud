package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMUserMainUser;
import com.lxcs.mybatis.bean.auto.CMUserMainUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMUserMainUserMapper {
    int countByExample(CMUserMainUserExample example);

    int deleteByExample(CMUserMainUserExample example);

    int deleteByPrimaryKey(String id);

    int insert(CMUserMainUser record);

    int insertSelective(CMUserMainUser record);

    List<CMUserMainUser> selectByExample(CMUserMainUserExample example);

    CMUserMainUser selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") CMUserMainUser record, @Param("example") CMUserMainUserExample example);

    int updateByExample(@Param("record") CMUserMainUser record, @Param("example") CMUserMainUserExample example);

    int updateByPrimaryKeySelective(CMUserMainUser record);

    int updateByPrimaryKey(CMUserMainUser record);
}