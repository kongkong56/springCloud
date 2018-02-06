package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMUserRole;
import com.lxcs.mybatis.bean.auto.CMUserRoleExample;
import com.lxcs.mybatis.bean.auto.CMUserRoleKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMUserRoleMapper {
    int countByExample(CMUserRoleExample example);

    int deleteByExample(CMUserRoleExample example);

    int deleteByPrimaryKey(CMUserRoleKey key);

    int insert(CMUserRole record);

    int insertSelective(CMUserRole record);

    List<CMUserRole> selectByExample(CMUserRoleExample example);

    CMUserRole selectByPrimaryKey(CMUserRoleKey key);

    int updateByExampleSelective(@Param("record") CMUserRole record, @Param("example") CMUserRoleExample example);

    int updateByExample(@Param("record") CMUserRole record, @Param("example") CMUserRoleExample example);

    int updateByPrimaryKeySelective(CMUserRole record);

    int updateByPrimaryKey(CMUserRole record);
}