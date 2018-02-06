package com.lxcs.mybatis.mapper.ext;


import com.lxcs.mybatis.bean.auto.CMUserExample;
import com.lxcs.mybatis.bean.ext.ExtPermissionModel;
import com.lxcs.mybatis.bean.ext.ExtRoleMenuPermissionModel;
import com.lxcs.mybatis.bean.ext.ExtUserModel;

import java.util.List;


public interface ExtPermissionMapper {

  /**
   * 获取用户的菜单权限
   *
   * @param param
   * @return
   */
  List<ExtPermissionModel> selectPermission(ExtPermissionModel param);


  /**
   * 获取用户信息
   *
   * @param example
   * @return
   */
  List<ExtUserModel> selectUserByExample(CMUserExample example);


  /**
   * 获取菜单的权限
   *
   * @param param
   * @return
   */
  List<ExtRoleMenuPermissionModel> selectRoleMenuPermission(ExtRoleMenuPermissionModel param);

}