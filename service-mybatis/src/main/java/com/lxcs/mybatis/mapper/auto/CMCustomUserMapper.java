package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CMCustomUser;
import com.lxcs.mybatis.bean.auto.CMCustomUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CMCustomUserMapper {
    int countByExample(CMCustomUserExample example);

    int deleteByExample(CMCustomUserExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CMCustomUser record);

    int insertSelective(CMCustomUser record);

    List<CMCustomUser> selectByExample(CMCustomUserExample example);

    CMCustomUser selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CMCustomUser record, @Param("example") CMCustomUserExample example);

    int updateByExample(@Param("record") CMCustomUser record, @Param("example") CMCustomUserExample example);

    int updateByPrimaryKeySelective(CMCustomUser record);

    int updateByPrimaryKey(CMCustomUser record);
}