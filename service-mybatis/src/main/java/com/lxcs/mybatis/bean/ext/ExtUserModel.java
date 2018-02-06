package com.lxcs.mybatis.bean.ext;

import java.io.Serializable;
import java.util.List;

import com.lxcs.mybatis.bean.BaseBean;

public class ExtUserModel extends BaseBean implements Serializable {

	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;

	private String userId;

	private String userName;

	private String companyName;

	private String realName;

	private String password;

	private String des3;

	private String mobileNumber;

	private String extensionNumber;

	private String extensionNumberOrg;

	private String address;

	private String emailAddress;

	private String userFlag;

	private String managerUserName;

	private String notes;

	private String oldUserNo;

	private String userNo;

	private String position;

	private String sex;

	private String joinDate;

	private String birthday;

	private String idNo;

	private String delFlag;

	private String createGroupCd;

	private String createUserCd;

	private String createDate;

	private String updateGroupCd;

	private String updateUserCd;

	private String updateDate;

	private String roleId;

	private String role;

	private String roleName;

	private String departmentId;

	private String departmentCd;

	private String departmentName;

	private String departmentPCd;

	private String status;

	private Integer sortKey;

	private String userType;

	private String userSortKey;

	private String userIcon;

	private List<String> listDepartmentCd;

	private String userFlagName;

	private String province;

	private String city;

	private String customId;
	// 分机号
	private String fenjiNumber;
	// 分机号
	private String fenjiNumberOrg;

	// 已经分配的案件数量
	private String caseNum;
	// 催记记录数
	private String caseProgressNum;
	// 案件处理数
	private String progressCaseNum;
	// 电话数量
	private String callNum;
	// 通话时长
	private String callLength;
	// 站内信用
	private String imFlag;

	public String getManagerUserName() {
		return managerUserName;
	}

	public void setManagerUserName(String managerUserName) {
		this.managerUserName = managerUserName;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getUserFlagName() {
		return userFlagName;
	}

	public void setUserFlagName(String userFlagName) {
		this.userFlagName = userFlagName;
	}

	public String getUserIcon() {
		return userIcon;
	}

	public void setUserIcon(String userIcon) {
		this.userIcon = userIcon;
	}

	public String getUserSortKey() {
		return userSortKey;
	}

	public void setUserSortKey(String userSortKey) {
		this.userSortKey = userSortKey;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartmentCd() {
		return departmentCd;
	}

	public void setDepartmentCd(String departmentCd) {
		this.departmentCd = departmentCd;
	}

	public String getExtensionNumber() {
		return extensionNumber;
	}

	public void setExtensionNumber(String extensionNumber) {
		this.extensionNumber = extensionNumber;
	}

	public List<String> getListDepartmentCd() {
		return listDepartmentCd;
	}

	public void setListDepartmentCd(List<String> listDepartmentCd) {
		this.listDepartmentCd = listDepartmentCd;
	}

	public String getDepartmentPCd() {
		return departmentPCd;
	}

	public void setDepartmentPCd(String departmentPCd) {
		this.departmentPCd = departmentPCd;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getSortKey() {
		return sortKey;
	}

	public void setSortKey(Integer sortKey) {
		this.sortKey = sortKey;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getRealName() {
		return realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDes3() {
		return des3;
	}

	public void setDes3(String des3) {
		this.des3 = des3;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getUserFlag() {
		return userFlag;
	}

	public void setUserFlag(String userFlag) {
		this.userFlag = userFlag;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}

	public String getCreateGroupCd() {
		return createGroupCd;
	}

	public void setCreateGroupCd(String createGroupCd) {
		this.createGroupCd = createGroupCd;
	}

	public String getCreateUserCd() {
		return createUserCd;
	}

	public void setCreateUserCd(String createUserCd) {
		this.createUserCd = createUserCd;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getUpdateGroupCd() {
		return updateGroupCd;
	}

	public void setUpdateGroupCd(String updateGroupCd) {
		this.updateGroupCd = updateGroupCd;
	}

	public String getUpdateUserCd() {
		return updateUserCd;
	}

	public void setUpdateUserCd(String updateUserCd) {
		this.updateUserCd = updateUserCd;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getOldUserNo() {
		return oldUserNo;
	}

	public void setOldUserNo(String oldUserNo) {
		this.oldUserNo = oldUserNo;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getIdNo() {
		return idNo;
	}

	public void setIdNo(String idNo) {
		this.idNo = idNo;
	}

	public String getCustomId() {
		return customId;
	}

	public void setCustomId(String customId) {
		this.customId = customId;
	}

	public String getCaseNum() {
		return caseNum;
	}

	public void setCaseNum(String caseNum) {
		this.caseNum = caseNum;
	}

	public String getCaseProgressNum() {
		return caseProgressNum;
	}

	public void setCaseProgressNum(String caseProgressNum) {
		this.caseProgressNum = caseProgressNum;
	}

	public String getProgressCaseNum() {
		return progressCaseNum;
	}

	public void setProgressCaseNum(String progressCaseNum) {
		this.progressCaseNum = progressCaseNum;
	}

	public String getCallNum() {
		return callNum;
	}

	public void setCallNum(String callNum) {
		this.callNum = callNum;
	}

	public String getCallLength() {
		return callLength;
	}

	public void setCallLength(String callLength) {
		this.callLength = callLength;
	}

	public String getImFlag() {
		return imFlag;
	}

	public void setImFlag(String imFlag) {
		this.imFlag = imFlag;
	}
	public String getFenjiNumber() {
		return fenjiNumber;
	}

	public void setFenjiNumber(String fenjiNumber) {
		this.fenjiNumber = fenjiNumber;
	}

	public String getExtensionNumberOrg() {
		return extensionNumberOrg;
	}

	public void setExtensionNumberOrg(String extensionNumberOrg) {
		this.extensionNumberOrg = extensionNumberOrg;
	}

	public String getFenjiNumberOrg() {
		return fenjiNumberOrg;
	}

	public void setFenjiNumberOrg(String fenjiNumberOrg) {
		this.fenjiNumberOrg = fenjiNumberOrg;
	}
}
