package com.lxcs.mybatis.bean.auto;

import com.lxcs.mybatis.bean.BaseBean;
import java.io.Serializable;

public class CMFenjiNumber extends BaseBean implements Serializable {
    private Integer id;

    private String extensionNumber;

    private String fenjiNumber;

    private String userId;

    private String userName;

    private String departmentTopCd;

    private String departmentTopName;

    private String isUsed;

    private String createUserId;

    private Integer createDate;

    private String createName;

    private String updateUserId;

    private Integer updateDate;

    private String updateName;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getExtensionNumber() {
        return extensionNumber;
    }

    public void setExtensionNumber(String extensionNumber) {
        this.extensionNumber = extensionNumber == null ? null : extensionNumber.trim();
    }

    public String getFenjiNumber() {
        return fenjiNumber;
    }

    public void setFenjiNumber(String fenjiNumber) {
        this.fenjiNumber = fenjiNumber == null ? null : fenjiNumber.trim();
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

    public String getDepartmentTopCd() {
        return departmentTopCd;
    }

    public void setDepartmentTopCd(String departmentTopCd) {
        this.departmentTopCd = departmentTopCd == null ? null : departmentTopCd.trim();
    }

    public String getDepartmentTopName() {
        return departmentTopName;
    }

    public void setDepartmentTopName(String departmentTopName) {
        this.departmentTopName = departmentTopName == null ? null : departmentTopName.trim();
    }

    public String getIsUsed() {
        return isUsed;
    }

    public void setIsUsed(String isUsed) {
        this.isUsed = isUsed == null ? null : isUsed.trim();
    }

    public String getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(String createUserId) {
        this.createUserId = createUserId == null ? null : createUserId.trim();
    }

    public Integer getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Integer createDate) {
        this.createDate = createDate;
    }

    public String getCreateName() {
        return createName;
    }

    public void setCreateName(String createName) {
        this.createName = createName == null ? null : createName.trim();
    }

    public String getUpdateUserId() {
        return updateUserId;
    }

    public void setUpdateUserId(String updateUserId) {
        this.updateUserId = updateUserId == null ? null : updateUserId.trim();
    }

    public Integer getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Integer updateDate) {
        this.updateDate = updateDate;
    }

    public String getUpdateName() {
        return updateName;
    }

    public void setUpdateName(String updateName) {
        this.updateName = updateName == null ? null : updateName.trim();
    }
}