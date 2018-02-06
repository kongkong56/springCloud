package com.lxcs.mybatis.mapper.auto;

import com.lxcs.mybatis.bean.auto.CTAttachment;
import com.lxcs.mybatis.bean.auto.CTAttachmentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CTAttachmentMapper {
    int countByExample(CTAttachmentExample example);

    int deleteByExample(CTAttachmentExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CTAttachment record);

    int insertSelective(CTAttachment record);

    List<CTAttachment> selectByExample(CTAttachmentExample example);

    CTAttachment selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CTAttachment record, @Param("example") CTAttachmentExample example);

    int updateByExample(@Param("record") CTAttachment record, @Param("example") CTAttachmentExample example);

    int updateByPrimaryKeySelective(CTAttachment record);

    int updateByPrimaryKey(CTAttachment record);
}