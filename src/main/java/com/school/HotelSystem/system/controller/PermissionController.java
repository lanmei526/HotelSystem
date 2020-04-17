package com.school.HotelSystem.system.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.HotelSystem.system.model.PermissionInfo;
import com.school.HotelSystem.system.service.PermissionService;
@Controller
public class PermissionController {
	@Autowired
	private PermissionService permissionService;
	@RequestMapping(value="/permission.do")
	public String queryPermissionList(HttpServletRequest req,HttpServletResponse resp,PermissionInfo permission,Model model) {
	List<PermissionInfo> perList = permissionService.queryPermissionList();
	model.addAttribute("perList", perList);
		return "permission/permission";
	}
	@RequestMapping(value="/addPermissionUI.do")
	public String addPermissionUI(HttpServletRequest req,HttpServletResponse resp,PermissionInfo permission,Model model,String pId) {
		List<PermissionInfo> perList = permissionService.queryPermissionList();
		//System.out.println(perList);
		model.addAttribute("perList", perList);
			return "permission/addPermissionForm";
		}
	@RequestMapping(value="/addPermission.do")
	public String addPermission(HttpServletRequest req,HttpServletResponse resp,PermissionInfo permission,Model model,String pId) {
		System.out.println(pId);
		permission.setParentId(pId);
		permissionService.addPermission(permission);
		List<PermissionInfo> perList = permissionService.queryPermissionList();
		model.addAttribute("perList", perList);
			return "permission/permission";
		}
	
	@RequestMapping(value="/deletePermission.do")
	public String deletePermission(HttpServletRequest req,HttpServletResponse resp,PermissionInfo permission,Model model,String id) {
		permissionService.deletePermission(id);
		List<PermissionInfo> perList = permissionService.queryPermissionList();
		model.addAttribute("perList", perList);
			return "permission/permission";
		}
	@RequestMapping(value="/updatePermissionUI.do")
	public String updatePermissionUI(HttpServletRequest req,HttpServletResponse resp,PermissionInfo permission,Model model,String id) {
		PermissionInfo per= permissionService.queryPermissionById(id);
		model.addAttribute("per", per);
		List<PermissionInfo> perList = permissionService.queryPermissionList();
		model.addAttribute("perList", perList);
			return "permission/updatePermissionForm";
		}
	@RequestMapping(value="/updatePermission.do")
	public String updatePermission(HttpServletRequest req,HttpServletResponse resp,PermissionInfo permission,Model model,String id) {
	    permissionService.updatePermission(permission);
	    List<PermissionInfo> perList = permissionService.queryPermissionList();
		model.addAttribute("perList", perList);
			return "permission/permission";
		}
	
}
