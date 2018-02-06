package com.lxcs.util.enums;

/**
 * Created by Administrator on 2017/5/15 0015.
 */
public enum StatusEnums {

    Return1("Return1"),
    Return2("Return2"),
    Return3("Return3"),
    Return4("Return4"),
    Return5("Return5"),
    Closed1("Closed1"),
    Closed2("Closed2"),
    Closed3("Payoff"),
    Closed4("Closed4"),
    Closed5("Closed5"),
    // Fresh
    Fresh("Fresh"),
    Search("Search"),
    Search1("Search1"),
    Search2("Search2"),
    Found1("Found1"),
    Found2("Found2"),
    Found3("Found3"),
    PTP("PTP"),
    PTPn("PTPn"),
    Check("Check"),
    Visit("Visit"),
    CPT1("CPT1"),
    CPT2("CPT2"),
    SK("SK"),
    SF("SF"),
    // 未分配任务
    Raw("Raw"),
    // 未分配任务
    New("New"),

    // 处理中的案子
    Processing("Processing");

    private String value;

    StatusEnums(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
