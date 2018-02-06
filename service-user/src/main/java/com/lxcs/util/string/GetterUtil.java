package com.lxcs.util.string;

import com.lxcs.util.date.DateFormat;
import com.lxcs.util.validator.Validator;

import java.math.BigDecimal;
import java.util.HashMap;

public class GetterUtil {

    /**
     * 取得String
     *
     * @param obj
     * @return
     */
    public static String getString(Object obj) {
        if (Validator.isNull(obj)) {
            return "";
        }
        return String.valueOf(obj);
    }

    /**
     * 取得String
     *
     * @param obj
     * @param val 默认值
     * @return
     */
    public static String getString(Object obj, String val) {
        if (Validator.isNull(obj)) {
            return val;
        }
        return String.valueOf(obj);
    }
    /**
     * 取得double
     *
     * @param obj
     * @return
     */
    public static double getDouble(Object obj) {
        if (Validator.isNull(obj)) {
            return 0.0;
        }
        try {
            return Double.valueOf(String.valueOf(obj));
        } catch (Exception e) {
            return 0.0;
        }
    }

    /**
     * 取得long
     *
     * @param obj
     * @return
     */
    public static long getLong(Object obj) {
        if (Validator.isNull(obj)) {
            return 0;
        }

        try {
            return Long.valueOf(String.valueOf(obj));
        } catch (Exception e) {
            return 0;
        }

    }

    /**
     * 取得int
     *
     * @param obj
     * @return
     */
    public static int getInteger(Object obj) {
        if (Validator.isNull(obj)) {
            return 0;
        }

        try {
            return Integer.valueOf(String.valueOf(obj));
        } catch (Exception e) {
            return 0;
        }
    }

    /**
     * 取得int
     *
     * @param obj
     * @return
     */
    public static int getInteger(Object obj, int defaultValue) {
        if (Validator.isNull(obj)) {
            return defaultValue;
        }

        try {
            return Integer.valueOf(String.valueOf(obj));
        } catch (Exception e) {
            return defaultValue;
        }
    }

    /**
     * 取得BigDecimal
     *
     * @param obj
     * @return
     */
    public static BigDecimal getBigDecimal(Object obj, int scale) {
        if (Validator.isNull(obj)) {
            return new BigDecimal(0);
        }

        try {
            return new BigDecimal(obj.toString()).setScale(scale, BigDecimal.ROUND_HALF_UP);
        } catch (Exception e) {
            return new BigDecimal(0);
        }
    }


    /**
     * 日期转化
     *
     * @param hashMap
     * @param filedName
     */
    public static String getDataFromHashMap(HashMap hashMap, String filedName, String format) {
        if (hashMap.get(filedName) != null) {
            String date = String.valueOf(hashMap.get(filedName));
            String value = DateFormat.timestampToString(Long.valueOf(date), format);
            return value;
        }
        return "";
    }

    /**
     * 从Map中获取不为空白的数据
     *
     * @param hashMap
     * @param key
     * @return
     */
    public static String getDataFromHashMap(HashMap hashMap, String key) {
        if (hashMap.get(key) != null) {
            return String.valueOf(hashMap.get(key));
        }
        return "";
    }
}
