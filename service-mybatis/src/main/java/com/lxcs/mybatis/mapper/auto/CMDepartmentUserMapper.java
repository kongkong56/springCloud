package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMDepartmentUser;
import com.lxcs.mybatis.bean.auto.CMDepartmentUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMDepartmentUserMapper {
    int countByExample(CMDepartmentUserExample example);

    int deleteByExample(CMDepartmentUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CMDepartmentUser record);

    int insertSelective(CMDepartmentUser record);

    List<CMDepartmentUser> selectByExample(CMDepartmentUserExample example);

    CMDepartmentUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CMDepartmentUser record, @Param("example") CMDepartmentUserExample example);

    int updateByExample(@Param("record") CMDepartmentUser record, @Param("example") CMDepartmentUserExample example);

    int updateByPrimaryKeySelective(CMDepartmentUser record);

    int updateByPrimaryKey(CMDepartmentUser record);
}