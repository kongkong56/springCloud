/*
 * Copyright(c) 2012-2017 JD Pharma.Ltd. All Rights Reserved.
 * 
 */
package com.lxcs.util.sql;

import com.lxcs.util.security.CRC;
import com.lxcs.util.string.GetterUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;

import java.math.BigDecimal;

/**
 * 催记进展表表存储指定类
 * 
 * @author renxingchen
 * @version zxpt 1.0
 * @since zxpt 1.0 2017年5月9日
 * @see 下午1:49:26
 */
@Component
public class ProgressTbNameHandler implements TbNameHandler {

	/**
	 * 此处为实现/覆载说明
	 * 
	 * @author renxingchen
	 * @param code
	 * @return
	 * @see com.lxcs.common.util.sql.TbNameHandler#getTbName(String)
	 */
	@Override
	public String getTbName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return "lxcs_progress" + decimal.divideAndRemainder(new BigDecimal(100))[1].toString();
			// return "lxcs_progress";
		}
		return "lxcs_progress0";
	}

/*	@Override
	public String getTbClassName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return "LxcsProgress" + decimal.divideAndRemainder(new BigDecimal(2))[1].toString();
			// return "LxcsProgress";
		}
		return null;
	}

	@Override
	public String getTbMapperName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return "LxcsProgress" + decimal.divideAndRemainder(new BigDecimal(2))[1].toString() + "Mapper";
			// return "LxcsProgressMapper";
		}
		return null;
	}

	@Override
	public String getTbMapperBeanName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return "lxcsProgress" + decimal.divideAndRemainder(new BigDecimal(2))[1].toString() + "Mapper";
			// return "lxcsProgressMapper";
		}
		return null;
	}*/

	@Override
	public String getTbNumberName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return decimal.divideAndRemainder(new BigDecimal(100))[1].toString();
			// return "";
		}
		return "0";
	}

}
