package com.school.HotelSystem.system.controller;

import java.io.PrintStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.HotelSystem.system.model.RoleInfo;
import com.school.HotelSystem.system.model.ShrioUser;
import com.school.HotelSystem.system.model.UserRole;
import com.school.HotelSystem.system.service.RoleService;
import com.school.HotelSystem.system.service.UserRoleService;
import com.school.HotelSystem.system.service.UserService;

import frame.utils.PrimaryKeyUtil;

@Controller
public class UserRoleController {

	@Autowired
	private UserRoleService userRoleService;
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;
	@RequestMapping(value="/userRoleList.do")
	public String queryUserRole(HttpServletRequest req,HttpServletResponse resp,UserRole userRole,Model model) {
		
		List<UserRole> userRoleList=userRoleService.queryUserRoleList();
		//System.out.println(userList);
		model.addAttribute("userRoleList", userRoleList);
		return "userRole/userRoleList";
		
	}
	@RequestMapping(value="/FPRoleUI.do")
	public String FPRoleUI(HttpServletRequest req,HttpServletResponse resp,ShrioUser shrioUser,RoleInfo roleInfo,Model model,String id) {
		//角色列表
		List<RoleInfo> roleList=roleService.queryRoleList();
		model.addAttribute("roleList", roleList);
		//用户信息
		ShrioUser user=userService.selectYuangongById(id);
		model.addAttribute("user", user);
		//角色信息
		RoleInfo role=roleService.queryRoleByUserId(id);
		model.addAttribute("role", role);
		return "role/FPRole";
	}
	@RequestMapping(value="/FPRole.do")
	public String FPRole(HttpServletRequest req,HttpServletResponse resp,UserRole userRole,Model model,ShrioUser shrioUser,String id,String roleId) {
		int i = userRoleService.deleteUserRoleByUserId(id);
		userRole.setId(PrimaryKeyUtil.getPrimaryKey());
		userRole.setUserId(id);
		userRole.setRoleId(roleId);
		userRoleService.FPUserRole(userRole);
		ShrioUser user=userService.selectYuangongById(id);
		model.addAttribute("user", user);
		List<RoleInfo> roleList=roleService.queryRoleList();
		model.addAttribute("roleList", roleList);
		RoleInfo role=roleService.queryRoleByUserId(id);
		model.addAttribute("role", role);
		List<ShrioUser> yuangongList = userService.queryYuangongList();
		model.addAttribute("yuangongList", yuangongList);
		return "yuangong/yuangongList";	
	}
}
