package com.school.HotelSystem.system.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.HotelSystem.system.model.RoleInfo;
import com.school.HotelSystem.system.service.RoleService;

import frame.utils.PrimaryKeyUtil;

@Controller
public class RoleController {

	@Autowired
	private RoleService roleService;
	
	@RequestMapping(value="/roleList.do")
	public String list(HttpServletRequest req,HttpServletResponse resp,RoleInfo role,Model model) {
		List<RoleInfo> roles=roleService.queryRoleList();
		model.addAttribute("roles",roles);
		return "role/roleList";
	}
	
	@RequestMapping(value="addRoleUI.do")
	public String addRoleUI(HttpServletRequest req,HttpServletResponse resp,RoleInfo role,Model model) {
		return "role/addRoleUI";
	}
	
	@RequestMapping(value="addRole.do")
	public String addRole(HttpServletRequest req,HttpServletResponse resp,RoleInfo role,Model model) {
		 role.setRoleId(PrimaryKeyUtil.getPrimaryKey());
		 roleService.addRole(role);
		 List<RoleInfo> roles=roleService.queryRoleList();
		 model.addAttribute("roles",roles);
		return "role/roleList";
	}
	@RequestMapping(value="deleteRole.do")
	public String deleteRole(HttpServletRequest req,HttpServletResponse resp,RoleInfo role,Model model,String id) {
		
		roleService.deleteRole(id);
		List<RoleInfo> roles=roleService.queryRoleList();
		model.addAttribute("roles",roles);
		return "role/roleList";
	}
}
