package com.lxcs.web;

import com.lxcs.mybatis.mapper.auto.*;
import org.springframework.beans.factory.annotation.Autowired;

public class AutoMapper {

	@Autowired
	protected CMMenuMapper cmmenuMapper;

	@Autowired
	protected CMMenuPermissionMapper cmmenupermissionMapper;

	@Autowired
	protected CMNameMapper cmnameMapper;

	@Autowired
	protected CMRoleMapper cmroleMapper;

	@Autowired
	protected CMRoleMenuPermissionMapper cmrolemenupermissionMapper;

	@Autowired
	protected CMUserMapper cmuserMapper;

	@Autowired
	protected CMUserRoleMapper cmuserroleMapper;

	@Autowired
	protected CMDepartmentMapper cmdepartmentMapper;

	@Autowired
	protected CMDepartmentAreaMapper cmdepartmentAreaMapper;

	@Autowired
	protected CMDepartmentUserMapper cmdepartmentuserMapper;

	@Autowired
	protected CTAttachmentMapper ctattachmentMapper;

	@Autowired
	protected AreaMapper areaMapper;

	@Autowired
	protected CMCustomUserMapper cmcustomUserMapper;

	@Autowired
	protected CMUserMainMapper cmuserMainMapper;

	@Autowired
	protected CMUserMainUserMapper cmuserMainUserMapper;

	@Autowired
	protected CMFenjiNumberMapper cmfenjiNumberMapper;

	@Autowired
	protected CMFenjiLogMapper cmfenjiLogMapper;

	@Autowired
	protected CMPhoneMapper cmphoneMapper;
	@Autowired
	protected CMHolidayMapper cmholidayMapper;

}