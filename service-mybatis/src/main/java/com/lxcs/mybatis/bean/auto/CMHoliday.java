package com.lxcs.mybatis.bean.auto;

import com.lxcs.mybatis.bean.BaseBean;
import java.io.Serializable;

public class CMHoliday extends BaseBean implements Serializable {
    private Integer id;

    private String holidayName;

    private String holidayStartTime;

    private String holidayEndTime;

    private String createDate;

    private String createUserId;

    private String updateDate;

    private String updateUserId;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHolidayName() {
        return holidayName;
    }

    public void setHolidayName(String holidayName) {
        this.holidayName = holidayName == null ? null : holidayName.trim();
    }

    public String getHolidayStartTime() {
        return holidayStartTime;
    }

    public void setHolidayStartTime(String holidayStartTime) {
        this.holidayStartTime = holidayStartTime == null ? null : holidayStartTime.trim();
    }

    public String getHolidayEndTime() {
        return holidayEndTime;
    }

    public void setHolidayEndTime(String holidayEndTime) {
        this.holidayEndTime = holidayEndTime == null ? null : holidayEndTime.trim();
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate == null ? null : createDate.trim();
    }

    public String getCreateUserId() {
        return createUserId;
    }

    public void setCreateUserId(String createUserId) {
        this.createUserId = createUserId == null ? null : createUserId.trim();
    }

    public String getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(String updateDate) {
        this.updateDate = updateDate == null ? null : updateDate.trim();
    }

    public String getUpdateUserId() {
        return updateUserId;
    }

    public void setUpdateUserId(String updateUserId) {
        this.updateUserId = updateUserId == null ? null : updateUserId.trim();
    }
}