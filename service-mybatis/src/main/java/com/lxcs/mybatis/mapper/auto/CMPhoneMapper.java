package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMPhone;
import com.lxcs.mybatis.bean.auto.CMPhoneExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMPhoneMapper {
    int countByExample(CMPhoneExample example);

    int deleteByExample(CMPhoneExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CMPhone record);

    int insertSelective(CMPhone record);

    List<CMPhone> selectByExample(CMPhoneExample example);

    CMPhone selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CMPhone record, @Param("example") CMPhoneExample example);

    int updateByExample(@Param("record") CMPhone record, @Param("example") CMPhoneExample example);

    int updateByPrimaryKeySelective(CMPhone record);

    int updateByPrimaryKey(CMPhone record);
}