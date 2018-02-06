package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMHoliday;
import com.lxcs.mybatis.bean.auto.CMHolidayExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMHolidayMapper {
    int countByExample(CMHolidayExample example);

    int deleteByExample(CMHolidayExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CMHoliday record);

    int insertSelective(CMHoliday record);

    List<CMHoliday> selectByExample(CMHolidayExample example);

    CMHoliday selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CMHoliday record, @Param("example") CMHolidayExample example);

    int updateByExample(@Param("record") CMHoliday record, @Param("example") CMHolidayExample example);

    int updateByPrimaryKeySelective(CMHoliday record);

    int updateByPrimaryKey(CMHoliday record);
}