package com.lxcs.util.enums;

/**
 * Created by Administrator on 2017/7/3 0003.
 */
public enum HSBCFileTypeEnums {
    Assignment("Assignment"),
    Collateral("Collateral"),
    RelatedPerson("RelatedPerson"),
    Recall("Recall"),
    Payments("Payments"),
    Address("Address"),
    Phone("Phone");

    private String value;

    HSBCFileTypeEnums(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
