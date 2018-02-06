package com.lxcs.mybatis.bean.auto;

import com.lxcs.mybatis.bean.BaseBean;
import java.io.Serializable;

public class CMFenjiLog extends BaseBean implements Serializable {
    private Integer id;

    private String extensionNumber;

    private String fenjiNumber;

    private String userId;

    private String userName;

    private String lastUserId;

    private String lastUserName;

    private String departmentTopCd;

    private String departmentTopName;

    private String lastDepartmentTopCd;

    private String lastDepartmentTopName;

    private String isUsed;

    private String createUserId;

    private Integer createDate;

    private String createName;

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

    public String getLastUserId() {
        return lastUserId;
    }

    public void setLastUserId(String lastUserId) {
        this.lastUserId = lastUserId == null ? null : lastUserId.trim();
    }

    public String getLastUserName() {
        return lastUserName;
    }

    public void setLastUserName(String lastUserName) {
        this.lastUserName = lastUserName == null ? null : lastUserName.trim();
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

    public String getLastDepartmentTopCd() {
        return lastDepartmentTopCd;
    }

    public void setLastDepartmentTopCd(String lastDepartmentTopCd) {
        this.lastDepartmentTopCd = lastDepartmentTopCd == null ? null : lastDepartmentTopCd.trim();
    }

    public String getLastDepartmentTopName() {
        return lastDepartmentTopName;
    }

    public void setLastDepartmentTopName(String lastDepartmentTopName) {
        this.lastDepartmentTopName = lastDepartmentTopName == null ? null : lastDepartmentTopName.trim();
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
}