/*
 * Copyright(c) 2012-2017 JD Pharma.Ltd. All Rights Reserved.
 * 
 */
package com.lxcs.util.sql;

/**
 * 此处为类说明
 * 
 * @author renxingchen
 * @version zxpt 1.0
 * @since zxpt 1.0 2017年5月9日
 * @see 下午1:47:33
 */
public interface TbNameHandler {

	String getTbName(String code);

	/*String getTbClassName(String code);

	String getTbMapperName(String code);

	String getTbMapperBeanName(String code);*/

	String getTbNumberName(String code);

}
