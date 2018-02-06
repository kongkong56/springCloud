package com.lxcs.mybatis.mapper.ext;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxcs.mybatis.bean.ext.ExtUserModel;

public interface ExtUserMapper {

    int selectUserListCount(ExtUserModel record);

    List<ExtUserModel> selectUserList(ExtUserModel record);

    ExtUserModel selectUserById(String userId);

    List<ExtUserModel> selectAuthorizationUserList(ExtUserModel record);

    List<ExtUserModel> selectInviteUserList(ExtUserModel record);

    List<ExtUserModel> selectLoginUserDepartmentAndArea(ExtUserModel record);
    
    /**
     * 
     * 根据角色名称获取对应的用户列表
     * @author ZhuXD
     * @param role
     * @return
     */
    List<ExtUserModel> selectUserListByRole(String role);

    List<ExtUserModel> selectUserListForIM(ExtUserModel record);
    
    /**
     * 根据分公司和角色获取用户的id列表
     * 
     * @author JJJ
     * @param departmentCd
     * @param role
     * @return
     */
    List<String> getUserIdsByDepartmentAndRole(@Param("departmentCd") String departmentCd, @Param("role") String role);
}