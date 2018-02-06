package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMUser;
import com.lxcs.mybatis.bean.auto.CMUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMUserMapper {
    int countByExample(CMUserExample example);

    int deleteByExample(CMUserExample example);

    int deleteByPrimaryKey(String userId);

    int insert(CMUser record);

    int insertSelective(CMUser record);

    List<CMUser> selectByExample(CMUserExample example);

    CMUser selectByPrimaryKey(String userId);

    int updateByExampleSelective(@Param("record") CMUser record, @Param("example") CMUserExample example);

    int updateByExample(@Param("record") CMUser record, @Param("example") CMUserExample example);

    int updateByPrimaryKeySelective(CMUser record);

    int updateByPrimaryKey(CMUser record);
}