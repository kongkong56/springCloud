/*
 * Copyright 2015-2016 the original author or authors..
 *
 * Licensed under the 青岛高软盛信息技术有限公司 License, Version 1.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.gogtz.com/licenses/LICENSE-1.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and limitations under the License.
 */
package com.lxcs.util.constants;

/**
 * <p>
 * 共通常量文件
 * </p>
 *
 * @author GOGTZ-T
 * @version 0.0.0
 * @since 1.0
 */
public class ConstantsUtil {
    /**
     * 用户信息
     */
    public static final String LOGIN_USER_INFO = "LOGIN_USER_INFO";
    public static final String LOGIN_USER_MANAGE_DEPARTMENT = "LOGIN_USER_MANAGE_DEPARTMENT";
    public static final String LOGIN_USER_RESOURCE = "LOGIN_USER_RESOURCE";
    /**
     * 微信保留的用户信息
     */
    public static final String WECHAR_USER_INFO = "WECHAR_USER_INFO";
    /**
     * 用户信息
     */
    public static final String MAIN_MENU_TREE = "MAIN_MENU_TREE";
    /**
     * 后台验证有错误，防止二次提交用
     */
    public static final String FORM_HAS_ERROR = "FORM_HAS_ERROR";
    /**
     * 菜单KEY
     */
    public static final String FUNCTION_ID = "fid";
    /**
     * 用户菜单的权限
     */
    public static final String VIEW = "VIEW";
    /**
     * 树的顶级菜单的编号
     */
    public static final String TREE_TOP = "00000000-0000-0000-0000-000000000000";
    /**
     * 顶级总部菜单的编号
     */
    public static final String ZHONGBU_TOP = "49b2ddf7-56ef-467d-ae12-0bf7f388105c";

    /**
     * ajax调用返回KEY
     */
    public static final String AJAX_RESULT_KEY = "success";
    /**
     * ajax调用成功
     */
    public static final String AJAX_RESULT_SUCCESS_VALUE = "0";
    /**
     * ajax调用失败
     */
    public static final String AJAX_RESULT_FINAL_VALUE = "1";

    /**
     * Flag删除
     */
    public static final String FLG_DELETE = "1";
    /**
     * Flag正常
     */
    public static final String FLG_NORMAL = "0";

    /**
     * LIMIT
     */
    public static final int LIMIT_MINUS_ONE = -1;

    /**
     * 文件类型
     */
    public static final String FILE_XLS = "xls";

    /**
     * 文件类型
     */
    public static final String FILE_XLSX = "xlsx";
    /**
     * 文件类型
     */
    public static final String FILE_DOC = "doc";

    /**
     * 文件类型
     */
    public static final String FILE_DOCX = "docx";

    /**
     * 文件类型
     */
    public static final String FILE_APK = "apk";
    /**
     * 用户信息
     */
    public static final String ADMIN = "admin";

    /**
     * ftl模板文件类型
     */
    public static final String FTL_TYPE_CHARACTER = "character";
    /**
     * ftl模板文件名称
     */
    public static final String CHARACTER_FONT_NAME = "simsun.ttc";

    /**
     * ftl模板文件名称
     */
    public static final String CHARACTER_FTL_NAME = "character_result.ftl";

    public static String SPLIT_MARK = "$$$$$$";

    /**
     * 首页顶部搜索栏默认提示信息
     */
    public static final String INDEX_SEARCH_TIP = "index_search_tip";

    // 订单类型 1：企业 2：个人
    public static final String ORDER_TYPE_ENTERPRISE = "1";
    public static final String ORDER_TYPE_PERSONAL = "2";

    // 角色
    public static final String ROLE_MANAGER = "MANAGER"; // 分公司经理
    public static final String ROLE_LAWMEMBER = "LAWMEMBER"; // 法务员
    public static final String ROLE_VISIT = "VISIT"; // 外访员
    public static final String ROLE_CUSTOMER = "CUSTOMER";  // 地区客服
    public static final String ROLE_SEEK = "SEEK"; // 搜索员
    public static final String ROLE_SEEK_MANAGER = "SEEKMANAGER"; // 搜索经理
    public static final String ROLE_ZONGBU_CUSTOM = "ZONGBU_CUSTOM"; // 总部客服
    public static final String ROLE_LAWMEMBER_LEADER = "LAWMEMBER_LEADER"; // 法务组长

    // 数据字典
    public static final String NAME_CLASS_TEMPLATE_FIELD = "TEMPLATE_FIELD";// 模板字段

    // 权限名
    public static final String ROLE_ADMIN = "admin";    // 系统管理员

    // MongoDb表名
    // 委案数据业务表
    public static final String MONGO_LXCS_CASE = "lxcs_case";
    // 委案数据临时表
    public static final String MONGO_LXCS_CASE_TEMP = "lxcs_case_temp";
    // 委案数据临时表(组合后)
    public static final String MONGO_LXCS_CASE_MERGED = "lxcs_case_merged";
    // 委案文件表
    public static final String MONGO_LXCS_CASE_FILE = "lxcs_case_file";
    // 委案文件内容表
    public static final String MONGO_LXCS_CASE_FILE_DATA = "lxcs_case_file_data";
    // 委案文件错误数据表
    public static final String MONGO_LXCS_CASE_FILE_DATA_ERROR = "lxcs_case_file_data_error";
    // 委案文件正确数据表
    public static final String MONGO_LXCS_CASE_FILE_DATA_SUCCESS = "lxcs_case_file_data_success";
    // 委案文件错误数据详情表（每个字段一条数据）
    public static final String MONGO_LXCS_CASE_FILE_DATA_ERROR_LOG = "lxcs_case_file_data_error_log";
    // 卡临时表
    public static final String MONGO_LXCS_CASE_CARD_TEMP = "lxcs_case_card_temp";
    // 地址临时表
    public static final String MONGO_LXCS_CASE_ADDRESS_TEMP = "lxcs_case_address_temp";
    // 电话临时表
    public static final String MONGO_LXCS_CASE_PHONE_TEMP = "lxcs_case_phone_temp";
    // 案件操作的历史记录
    public static final String MONGO_LXCS_CASE_HISTORY = "lxcs_case_history";
    // 案件外访记录
    public static final String MONGO_LXCS_CASE_VISIT = "lxcs_case_visit";
    // 减免记录
    public static final String MONGO_LXCS_CASE_REMISSION = "lxcs_case_remission";
    // 录音记录
    public static final String MONGO_LXCS_SOUND_RECORD = "lxcs_sound_record";
    // 进展
    public static final String MONGO_LXCS_PROGRESS = "lxcs_progress";
    // 案件关联电话关系表
    public static final String MONGO_LXCS_CASE_RELATE_PHONE = "lxcs_case_relate_phone";
    // 用户登录信息表
    public static final String MONGO_LXCS_USER_LOGIN_RECORD = "lxcs_user_login_record";
    // 部分配置表
    public static final String MONGO_LXCS_CONFIG = "lxcs_config";
    // 对账单信息详细表
    public static final String MONGO_LXCS_CASE_REPAYMENT_DETAILS = "lxcs_case_repayment_details";
    // 信件内容表
    public static final String MONGO_LXCS_INTERNAL_MAIL_CONTENT = "lxcs_internal_mail_content";
    // 赛普录音记录表
    public static final String MONGO_LXCS_RECORD = "lxcs_record";

    // 电话信息表
    public static final String CMNAME_LXCS_CONTACT_PHONE = "LXCS_CONTACT_PHONE";

    // 状态表联系电话类型
    public static final String LXCS_ACTION_CODE = "ACTION_CODE";
    // 状态表接听状况
    public static final String LXCS_RESULT_CODE = "RESULT_CODE";

    // 委案表状态名
    public static final String LXCS_STATUS_NAME = "CASE_STATUS";
    // 委案表状态分组1刚接到的
    public static final String LXCS_STATUS_NAME_GROUP_ID_FIRST = "1";
    // 委案表状态分组2分配以后的
    public static final String LXCS_STATUS_NAME_GROUP_ID_MADOLE = "2";
    // 委案表状态分组3返回的状态
    public static final String LXCS_STATUS_NAME_GROUP_ID_END = "3";
    
    // 公司名称
    public static final String BASE_COMPANY_NAME = "青岛联信";
    
    // ES索引
    public static final String ES_INDEX = "lxcs";
    // ES地址类型
    public static final String ES_TYPE_ADDRESS = "address";
    
}
