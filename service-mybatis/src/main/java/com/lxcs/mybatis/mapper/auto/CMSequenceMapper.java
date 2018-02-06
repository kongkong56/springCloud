package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMSequence;
import com.lxcs.mybatis.bean.auto.CMSequenceExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMSequenceMapper {
    int countByExample(CMSequenceExample example);

    int deleteByExample(CMSequenceExample example);

    int deleteByPrimaryKey(String name);

    int insert(CMSequence record);

    int insertSelective(CMSequence record);

    List<CMSequence> selectByExample(CMSequenceExample example);

    CMSequence selectByPrimaryKey(String name);

    int updateByExampleSelective(@Param("record") CMSequence record, @Param("example") CMSequenceExample example);

    int updateByExample(@Param("record") CMSequence record, @Param("example") CMSequenceExample example);

    int updateByPrimaryKeySelective(CMSequence record);

    int updateByPrimaryKey(CMSequence record);
}