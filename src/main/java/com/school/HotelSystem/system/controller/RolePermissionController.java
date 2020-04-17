package com.school.HotelSystem.system.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.HotelSystem.system.model.PermissionInfo;
import com.school.HotelSystem.system.model.RoleInfo;
import com.school.HotelSystem.system.model.RolePermission;
import com.school.HotelSystem.system.service.PermissionService;
import com.school.HotelSystem.system.service.RolePermissionService;
import com.school.HotelSystem.system.service.RoleService;

@Controller
public class RolePermissionController {

	@Autowired
	private RoleService roleService;
	@Autowired
	private RolePermissionService rolePermissionService;
	@Autowired
	private PermissionService permissionService;
	
	@RequestMapping(value="FPPermissionForm.do")
	public String FPPermissionUI(HttpServletRequest req,HttpServletResponse resp,RoleInfo role,Model model,String id){
		//得到角色名
		RoleInfo role2 = roleService.queryRoleByRoleId(id);
		model.addAttribute("role", role2);
		//准备数据，权限列表
		String permissionType="menu";
		List<PermissionInfo> permissionList = permissionService.queryPermissionListByType(permissionType);
		model.addAttribute("permissionList", permissionList);
		//获取角色已经选中的权限
		List<PermissionInfo> selectPermission = permissionService.querySelectPermissionByRole(id);
		List<String> list=new ArrayList<String>();
		for (PermissionInfo permission : selectPermission) {
			list.add(permission.getPermissionId());
		}
		model.addAttribute("list", list);
		return "role/rolePermissionForm";
	}
	@RequestMapping(value="FPPermission.do")
	public String FPPermission(HttpServletRequest req,HttpServletResponse resp,RolePermission rolePermission,RoleInfo role,Model model,String id,String[] permissionIds){
		
		rolePermission.setRoleId(id);
		rolePermissionService.deleteRolePermissionById(id);
		for (String permissionId : permissionIds) {
			rolePermission.setPermissId(permissionId);
			rolePermissionService.addRolePermission(rolePermission);
		}
		//获取角色已经选中的权限
		List<PermissionInfo> selectPermission = permissionService.querySelectPermissionByRole(id);
		List<String> list=new ArrayList<String>();
		for (PermissionInfo permission : selectPermission) {
			list.add(permission.getPermissionId());
		}
		model.addAttribute("list", list);
		//得到角色名
		RoleInfo role2 = roleService.queryRoleByUserId(id);
		model.addAttribute("role", role2);
		//准备数据，权限列表
		List<PermissionInfo> permissionList = permissionService.queryPermissionList();
		model.addAttribute("permissionList", permissionList);
		List<RoleInfo> roles=roleService.queryRoleList();
		model.addAttribute("roles",roles);
		return "role/roleList";
	}
}
