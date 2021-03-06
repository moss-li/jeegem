package com.jeegem.permission.bo;

import java.io.Serializable;

import com.jeegem.common.model.Permission;
import com.jeegem.common.utils.StringUtils;

/**
 * 
 * 权限选择
 * @author jeegem
 *
 */
public class PermissionBo extends Permission implements Serializable {
	private static final long serialVersionUID = 1L;
	/**
	 * 是否勾选
	 */
	private String marker;
	/**
	 * role Id
	 */
	private String roleId;
	
	private String permissionId;
	
	public boolean isCheck(){
//		return StringUtils.equals(roleId,marker);
		return StringUtils.isNotBlank(roleId) && StringUtils.isNotBlank(permissionId);
	}
	public String getMarker() {
		return marker;
	}

	public void setMarker(String marker) {
		this.marker = marker;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getPermissionId() {
		return permissionId;
	}
	public void setPermissionId(String permissionId) {
		this.permissionId = permissionId;
	}
	
}
