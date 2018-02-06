package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMFenjiLog;
import com.lxcs.mybatis.bean.auto.CMFenjiLogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMFenjiLogMapper {
    int countByExample(CMFenjiLogExample example);

    int deleteByExample(CMFenjiLogExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CMFenjiLog record);

    int insertSelective(CMFenjiLog record);

    List<CMFenjiLog> selectByExample(CMFenjiLogExample example);

    CMFenjiLog selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CMFenjiLog record, @Param("example") CMFenjiLogExample example);

    int updateByExample(@Param("record") CMFenjiLog record, @Param("example") CMFenjiLogExample example);

    int updateByPrimaryKeySelective(CMFenjiLog record);

    int updateByPrimaryKey(CMFenjiLog record);
}