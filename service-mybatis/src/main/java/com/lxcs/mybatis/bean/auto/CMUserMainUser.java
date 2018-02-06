package com.lxcs.mybatis.bean.auto;

import com.lxcs.mybatis.bean.BaseBean;
import java.io.Serializable;

public class CMUserMainUser extends BaseBean implements Serializable {
    private String id;

    private String userMainId;

    private String userId;

    private String userName;

    private String delFlag;

    private String createUserCd;

    private String createDate;

    private String updateUserCd;

    private String updateDate;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getUserMainId() {
        return userMainId;
    }

    public void setUserMainId(String userMainId) {
        this.userMainId = userMainId == null ? null : userMainId.trim();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName == null ? null : userName.trim();
    }

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag == null ? null : delFlag.trim();
    }

    public String getCreateUserCd() {
        return createUserCd;
    }

    public void setCreateUserCd(String createUserCd) {
        this.createUserCd = createUserCd == null ? null : createUserCd.trim();
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate == null ? null : createDate.trim();
    }

    public String getUpdateUserCd() {
        return updateUserCd;
    }

    public void setUpdateUserCd(String updateUserCd) {
        this.updateUserCd = updateUserCd == null ? null : updateUserCd.trim();
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate == null ? null : updateDate.trim();
    }
}