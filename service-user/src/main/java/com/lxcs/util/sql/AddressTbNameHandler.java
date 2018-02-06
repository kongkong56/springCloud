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
 * 地址表存储指定类
 * 
 * @author renxingchen
 * @version zxpt 1.0
 * @since zxpt 1.0 2017年5月9日
 * @see 下午1:49:26
 */
@Component
public class AddressTbNameHandler implements TbNameHandler {

	/**
	 * 此处为实现/覆载说明
	 * 
	 * @author renxingchen
	 * @param code
	 * @return
	 */
	@Override
	public String getTbName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return "lxcs_contact_address" + decimal.divideAndRemainder(new BigDecimal(10))[1].toString();
			// return "lxcs_contact_address";
		}
		return "lxcs_contact_address0";
	}
/*
	@Override
	public String getTbClassName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return "LxcsContactAddress" + decimal.divideAndRemainder(new BigDecimal(2))[1].toString();
			// return "LxcsContactAddress";
		}
		return null;
	}

	@Override
	public String getTbMapperName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return "LxcsContactAddress" + decimal.divideAndRemainder(new BigDecimal(2))[1].toString() + "Mapper";
			// return "LxcsContactAddressMapper";
		}
		return null;
	}

	@Override
	public String getTbMapperBeanName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return "lxcsContactAddress" + decimal.divideAndRemainder(new BigDecimal(2))[1].toString() + "Mapper";
			// return "lxcsContactAddressMapper";
		}
		return null;
	}*/

	@Override
	public String getTbNumberName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return decimal.divideAndRemainder(new BigDecimal(10))[1].toString();
			// return "";
		}
		return "0";
	}

}
