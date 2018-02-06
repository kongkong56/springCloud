package com.lxcs.mybatis.bean.ext;

import com.lxcs.mybatis.bean.auto.CMMenu;
import com.lxcs.mybatis.bean.auto.CMMenuPermission;

import java.io.Serializable;
import java.util.List;

/**
 * @author GOGTZ-T
 * @version V1.0  
 * @package com.hyjf.admin.maintenance.AdminPermissions;
 * @date 2015/07/09 17:00
 */
public class AdminMenuBean extends CMMenu implements Serializable {

  /**
   * serialVersionUID
   */

  private static final long serialVersionUID = 387630498860089653L;

  private String ids;

  private String selectedNode;

  private List<CMMenuPermission> menuPermission;

  private String menuPermissionJson;

  private String role;

  private String sort;

  private List<AdminSystem> recordList;

  public String getIds() {
    return ids;
  }

  public void setIds(String ids) {
    this.ids = ids;
  }

  public List<AdminSystem> getRecordList() {
    return recordList;
  }

  public void setRecordList(List<AdminSystem> recordList) {
    this.recordList = recordList;
  }

  public String getSelectedNode() {
    return selectedNode;
  }

  public void setSelectedNode(String selectedNode) {
    this.selectedNode = selectedNode;
  }

  public List<CMMenuPermission> getMenuPermission() {
    return menuPermission;
  }

  public void setMenuPermission(List<CMMenuPermission> menuPermission) {
    this.menuPermission = menuPermission;
  }

  public String getRole() {
    return role;
  }

  public void setRole(String role) {
    this.role = role;
  }

  public String getMenuPermissionJson() {
    return menuPermissionJson;
  }

  public void setMenuPermissionJson(String menuPermissionJson) {
    this.menuPermissionJson = menuPermissionJson;
  }

  public String getSort() {
    return sort;
  }

  public void setSort(String sort) {
    this.sort = sort;
  }
}
