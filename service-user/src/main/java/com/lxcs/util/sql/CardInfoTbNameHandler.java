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
 * 卡信息表存储指定类
 * 
 * @author renxingchen
 * @version zxpt 1.0
 * @since zxpt 1.0 2017年5月9日
 * @see 下午1:49:26
 */
@Component
public class CardInfoTbNameHandler implements TbNameHandler {

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
			return "lxcs_card_info" + decimal.divideAndRemainder(new BigDecimal(10))[1].toString();
			// return "lxcs_card_info";
		}
		return "lxcs_card_info0";
	}
/*
	*//**
	 * 此处为实现/覆载说明
	 *
	 * @author renxingchen
	 * @param code
	 * @return
	 * @see com.lxcs.common.util.sql.TbNameHandler#getTbName(String)
	 *//*
	@Override
	public String getTbClassName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return "LxcsCardInfo" + decimal.divideAndRemainder(new BigDecimal(2))[1].toString();
			// return "LxcsCardInfo" ;
		}
		return null;
	}

	*//**
	 * 此处为实现/覆载说明
	 *
	 * @author renxingchen
	 * @param code
	 * @return
	 * @see com.lxcs.common.util.sql.TbNameHandler#getTbName(String)
	 *//*
	@Override
	public String getTbMapperName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return "LxcsCardInfo" + decimal.divideAndRemainder(new BigDecimal(2))[1].toString() + "Mapper";
			// return "LxcsCardInfoMapper";

		}
		return null;
	}*/

	/**
	 * 此处为实现/覆载说明
	 *
	 * @author renxingchen
	 * @param code
	 * @return
	 * @see com.lxcs.common.util.sql.TbNameHandler#getTbName(String)
	 */
	@Override
	public String getTbNumberName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return decimal.divideAndRemainder(new BigDecimal(10))[1].toString();
			// return "";

		}
		return "0";
	}

	/*@Override
	public String getTbMapperBeanName(String code) {
		if (StringUtils.isNoneBlank(code)) {
			BigDecimal decimal = GetterUtil.getBigDecimal(CRC.crc32(code), 0);
			return "lxcsCardInfo" + decimal.divideAndRemainder(new BigDecimal(2))[1].toString() + "Mapper";
			// return "lxcsCardInfoMapper";
		}
		return null;
	}*/

}
