package com.lxcs.mybatis.bean.auto;

import com.lxcs.mybatis.bean.BaseBean;
import java.io.Serializable;

public class CMPhone extends BaseBean implements Serializable {
    private Integer id;

    private String phoneFirst;

    private String phoneProvence;

    private String phoneCity;

    private String service;

    private Integer areaNumber;

    private String code;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPhoneFirst() {
        return phoneFirst;
    }

    public void setPhoneFirst(String phoneFirst) {
        this.phoneFirst = phoneFirst == null ? null : phoneFirst.trim();
    }

    public String getPhoneProvence() {
        return phoneProvence;
    }

    public void setPhoneProvence(String phoneProvence) {
        this.phoneProvence = phoneProvence == null ? null : phoneProvence.trim();
    }

    public String getPhoneCity() {
        return phoneCity;
    }

    public void setPhoneCity(String phoneCity) {
        this.phoneCity = phoneCity == null ? null : phoneCity.trim();
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service == null ? null : service.trim();
    }

    public Integer getAreaNumber() {
        return areaNumber;
    }

    public void setAreaNumber(Integer areaNumber) {
        this.areaNumber = areaNumber;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? null : code.trim();
    }
}