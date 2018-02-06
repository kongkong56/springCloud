package com.lxcs.mybatis.bean.ext;

import com.lxcs.mybatis.bean.auto.CMUser;
import com.lxcs.mybatis.bean.auto.CMUserMain;
import lombok.Data;

import java.util.List;

@Data
public class ExtUserMain extends CMUserMain {

    private String userNameList;

    private List<String> listDepartmentCd;
}