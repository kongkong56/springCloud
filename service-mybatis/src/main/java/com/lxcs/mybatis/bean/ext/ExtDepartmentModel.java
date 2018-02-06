package com.lxcs.mybatis.bean.ext;

import com.lxcs.mybatis.bean.BaseBean;
import com.lxcs.mybatis.bean.auto.CMDepartmentArea;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Administrator on 2016/8/8.
 */
public class ExtDepartmentModel extends BaseBean implements Serializable {
    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 1L;

    private String id;

    private String departmentCd;
   
    private String departmentOrCd;

    private String departmentName;

    private String departmentPCd;
    
    private String departmentIp;

    private String departmentIpSaipu;
    
    private String cityArea;

    private String status;

    private Integer sortKey;

    private String departmentIconUrl;

    private String delFlag;

    private String areas;

    private String savePath;

    private String userCnt;

    private List<CMDepartmentArea> departmentAreaList;

    public String getSavePath() {
        return savePath;
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }

    public List<CMDepartmentArea> getDepartmentAreaList() {
        return departmentAreaList;
    }

    public void setDepartmentAreaList(List<CMDepartmentArea> departmentAreaList) {
        this.departmentAreaList = departmentAreaList;
    }

    public String getUserCnt() {
        return userCnt;
    }

    public void setUserCnt(String userCnt) {
        this.userCnt = userCnt;
    }

    public String getAreas() {
        return areas;
    }

    public void setAreas(String areas) {
        this.areas = areas;
    }

    public String getDepartmentIconUrl() {
        return departmentIconUrl;
    }

    public void setDepartmentIconUrl(String departmentIconUrl) {
        this.departmentIconUrl = departmentIconUrl;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDepartmentCd() {
        return departmentCd;
    }

    public void setDepartmentCd(String departmentCd) {
        this.departmentCd = departmentCd;
    }

    public String getDepartmentName() {
        return departmentName;
    }

    public void setDepartmentName(String departmentName) {
        this.departmentName = departmentName;
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

    public String getDelFlag() {
        return delFlag;
    }

    public void setDelFlag(String delFlag) {
        this.delFlag = delFlag;
    }

	public String getDepartmentOrCd() {
		return departmentOrCd;
	}

	public void setDepartmentOrCd(String departmentOrCd) {
		this.departmentOrCd = departmentOrCd;
	}

	public String getDepartmentIp() {
		return departmentIp;
	}

	public void setDepartmentIp(String departmentIp) {
		this.departmentIp = departmentIp;
	}

    public String getDepartmentIpSaipu() {
        return departmentIpSaipu;
    }

    public void setDepartmentIpSaipu(String departmentIpSaipu) {
        this.departmentIpSaipu = departmentIpSaipu;
    }

	public String getCityArea() {
		return cityArea;
	}

	public void setCityArea(String cityArea) {
		this.cityArea = cityArea;
	}
}
