package com.lxcs.mybatis.bean.auto;

import com.lxcs.mybatis.bean.BaseBean;
import java.io.Serializable;

public class CMUserRoleKey extends BaseBean implements Serializable {
    private String userId;

    private String roleId;

    private static final long serialVersionUID = 1L;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId == null ? null : roleId.trim();
    }
}