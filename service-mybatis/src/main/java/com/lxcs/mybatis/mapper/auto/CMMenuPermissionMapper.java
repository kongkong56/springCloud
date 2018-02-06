package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMMenuPermission;
import com.lxcs.mybatis.bean.auto.CMMenuPermissionExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMMenuPermissionMapper {
    int countByExample(CMMenuPermissionExample example);

    int deleteByExample(CMMenuPermissionExample example);

    int deleteByPrimaryKey(String id);

    int insert(CMMenuPermission record);

    int insertSelective(CMMenuPermission record);

    List<CMMenuPermission> selectByExample(CMMenuPermissionExample example);

    CMMenuPermission selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") CMMenuPermission record, @Param("example") CMMenuPermissionExample example);

    int updateByExample(@Param("record") CMMenuPermission record, @Param("example") CMMenuPermissionExample example);

    int updateByPrimaryKeySelective(CMMenuPermission record);

    int updateByPrimaryKey(CMMenuPermission record);
}