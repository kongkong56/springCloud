package com.lxcs.mybatis.bean.ext;

import com.lxcs.mybatis.bean.BaseBean;
import com.lxcs.mybatis.bean.auto.Area;
import com.lxcs.mybatis.bean.auto.CMDepartment;
import com.lxcs.mybatis.bean.auto.CMDepartmentArea;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Administrator on 2016/8/8.
 */
@Data
public class ExtThreDepartmentModel extends CMDepartment implements Serializable {
    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 1L;

    private String departmentPPCd;
    private String departmentCTYCd;
}
