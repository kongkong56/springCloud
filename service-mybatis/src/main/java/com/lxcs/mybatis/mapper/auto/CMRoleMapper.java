package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMRole;
import com.lxcs.mybatis.bean.auto.CMRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMRoleMapper {
    int countByExample(CMRoleExample example);

    int deleteByExample(CMRoleExample example);

    int deleteByPrimaryKey(String roleId);

    int insert(CMRole record);

    int insertSelective(CMRole record);

    List<CMRole> selectByExample(CMRoleExample example);

    CMRole selectByPrimaryKey(String roleId);

    int updateByExampleSelective(@Param("record") CMRole record, @Param("example") CMRoleExample example);

    int updateByExample(@Param("record") CMRole record, @Param("example") CMRoleExample example);

    int updateByPrimaryKeySelective(CMRole record);

    int updateByPrimaryKey(CMRole record);
}