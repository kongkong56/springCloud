package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMDepartmentArea;
import com.lxcs.mybatis.bean.auto.CMDepartmentAreaExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMDepartmentAreaMapper {
    int countByExample(CMDepartmentAreaExample example);

    int deleteByExample(CMDepartmentAreaExample example);

    int deleteByPrimaryKey(String id);

    int insert(CMDepartmentArea record);

    int insertSelective(CMDepartmentArea record);

    List<CMDepartmentArea> selectByExample(CMDepartmentAreaExample example);

    CMDepartmentArea selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") CMDepartmentArea record, @Param("example") CMDepartmentAreaExample example);

    int updateByExample(@Param("record") CMDepartmentArea record, @Param("example") CMDepartmentAreaExample example);

    int updateByPrimaryKeySelective(CMDepartmentArea record);

    int updateByPrimaryKey(CMDepartmentArea record);
}