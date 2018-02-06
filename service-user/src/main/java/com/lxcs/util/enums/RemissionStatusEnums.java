package com.lxcs.util.enums;

/**
 * 减免状态枚举
 */
public enum RemissionStatusEnums {

    // 新申请
    NEW("New"),
    // 审批不通过
    RETURN("Return"),
    // 审批通过
    ACCEPT("Accept"),
    // 总部客服导出表格
    PROCESSING("Processing"),
    // 金额匹配达标后
    PROCESSING3("Processing3"),
    // 法务提交报备
    PROCESSING4("Processing4"),
    // 总部客服导出报备
    PROCESSING5("Processing5");

    private String value;

    RemissionStatusEnums(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
