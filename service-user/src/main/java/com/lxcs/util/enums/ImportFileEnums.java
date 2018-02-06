package com.lxcs.util.enums;

/**
 * Created by Administrator on 2017/5/15 0015.
 */
public enum ImportFileEnums {

	UPLOAD_CASE("UPLOAD_CASE"), // 导案
	CLOSING_DATE("closing_date"), // 退案时间导入
	IMPORT_DATE("import_date"), // 退案导入
	NOTE("note"), // 备注信息
	OTHER_NOTE("other_note"), // 附加信息
	UPLOAD_PHONE("upload_phone"), // 电话导入
	UPLOAD_ADDRESS("upload_address"), // 地址导入
	UPLOAD_REPAYMENT_DETAIL("upload_repayment_detail"), // 对账单导入
	UPLOAD_REPAYMENT_DETAIL_CORRECTION("upload_repayment_detail_correction"), // 对账单纠错导入
	UPLOAD_ARREARS("upload_arrears");// 欠款额导入

	private String value;

	ImportFileEnums(String value) {
		this.value = value;
	}

	public String getValue() {
		return value;
	}
}
