package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMRoleMenuPermission;
import com.lxcs.mybatis.bean.auto.CMRoleMenuPermissionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMRoleMenuPermissionMapper {
    int countByExample(CMRoleMenuPermissionExample example);

    int deleteByExample(CMRoleMenuPermissionExample example);

    int deleteByPrimaryKey(String id);

    int insert(CMRoleMenuPermission record);

    int insertSelective(CMRoleMenuPermission record);

    List<CMRoleMenuPermission> selectByExample(CMRoleMenuPermissionExample example);

    CMRoleMenuPermission selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") CMRoleMenuPermission record, @Param("example") CMRoleMenuPermissionExample example);

    int updateByExample(@Param("record") CMRoleMenuPermission record, @Param("example") CMRoleMenuPermissionExample example);

    int updateByPrimaryKeySelective(CMRoleMenuPermission record);

    int updateByPrimaryKey(CMRoleMenuPermission record);
}