package com.lxcs.mybatis.mapper.ext;

import com.lxcs.mybatis.bean.ext.ExtMenuModel;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface ExtMenuMapper {

    /**
     * 获取用户的左侧菜单
     *
     * @param extMenuModel
     * @return
     */
    List<ExtMenuModel> selectLeftMenuTree(ExtMenuModel extMenuModel);

}