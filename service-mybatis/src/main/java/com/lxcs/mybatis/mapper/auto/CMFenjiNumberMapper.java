package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMFenjiNumber;
import com.lxcs.mybatis.bean.auto.CMFenjiNumberExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMFenjiNumberMapper {
    int countByExample(CMFenjiNumberExample example);

    int deleteByExample(CMFenjiNumberExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CMFenjiNumber record);

    int insertSelective(CMFenjiNumber record);

    List<CMFenjiNumber> selectByExample(CMFenjiNumberExample example);

    CMFenjiNumber selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CMFenjiNumber record, @Param("example") CMFenjiNumberExample example);

    int updateByExample(@Param("record") CMFenjiNumber record, @Param("example") CMFenjiNumberExample example);

    int updateByPrimaryKeySelective(CMFenjiNumber record);

    int updateByPrimaryKey(CMFenjiNumber record);
}