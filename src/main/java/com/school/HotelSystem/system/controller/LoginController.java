package com.school.HotelSystem.system.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.school.HotelSystem.system.model.PermissionInfo;
import com.school.HotelSystem.system.model.ShrioUser;
import com.school.HotelSystem.system.service.PermissionService;
import com.school.HotelSystem.system.service.UserService;
import net.sf.json.JSONObject;

/**
 * 
 * 项目名称：HotelSystem 类名称：LoginController 类描述： 创建人：蓝春梅 创建时间：2020年3月13日 下午10:33:40
 * 
 * @version
 */
@Controller
public class LoginController {

	@Autowired
	private UserService userService;
	@Autowired
	private PermissionService permissionService;

	@RequestMapping(value = "/login.do")
	public String userLogin(HttpServletRequest request, HttpSession session, HttpServletResponse response, Model model,
			ShrioUser shrioUser,String check) {
		//String checkState=request.getParameter("checkState");
		if (shrioUser.getUsercode() == "" || shrioUser.getPassword() == "") {
			model.addAttribute("message", "账号或密码不能为空！");
			return "login";
		} else {
			ShrioUser user = userService.queryUserByUserCode(shrioUser.getUsercode());
			if (user == null) {
				model.addAttribute("message", "用户不存在！");
				return "login";
			} else {
				ShrioUser u = userService.queryUser(shrioUser);
				// System.out.println(u.toString());
				if (u != null) {
					session.setAttribute("USER", u);
					
					if (check !=null && check.equals("on")) {
						//System.out.println("id     "+u.getId());
						Cookie cookie = new Cookie("USERCOOKIE", u.getId());
						cookie.setMaxAge(10 * 24 * 60 * 60);
						response.addCookie(cookie);
					} else {
						Cookie[] cookies = request.getCookies();
						for (int i = 0; i < cookies.length; i++) {
							if (cookies[i].getName().equals("USERCOOKIE")) {
								cookies[i].setMaxAge(0);
								response.addCookie(cookies[i]);
							}
						}
					}
					List<PermissionInfo> menuList = permissionService.queryPermissionMenuListById(u.getId());
					HashMap<String, List<PermissionInfo>> menuPermissionMap = new HashMap<>();
					for (PermissionInfo permission : menuList) {
						List<PermissionInfo> permissionList = permissionService
								.querypermissionMenuListByParentId(permission.getPermissionId());
						String parentId = permission.getPermissionId();
						menuPermissionMap.put(parentId, permissionList);
						request.setAttribute("menuList", menuList);
						request.setAttribute("menuPermissionMap", menuPermissionMap);
					}
					
					model.addAttribute("message", "登录成功！");
					return "index";
				} else {
					model.addAttribute("message", "账号或密码错误，登录失败！");
					return "login";
				}

			}
		}

	}
	@RequestMapping(value = "/searchCookie.do")
	@ResponseBody
	public String searchCookie(HttpServletRequest request, HttpSession session, HttpServletResponse response,
			Model model, ShrioUser shrioUser) {
		Cookie[] cookies = request.getCookies();
		/*
		 * for (Cookie cookie : cookies) {
		 * System.out.println("cookieName                "+cookie.getName()); }
		 */
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
			//	System.out.println(cookies[i].getName().equals("USERCOOKIE"));
				if (cookies[i].getName().equals("USERCOOKIE")) {
					ShrioUser cookie = userService.searchCookie(cookies[i].getValue());
					JSONObject jsonobject = JSONObject.fromObject(cookie);
					String userjson = jsonobject.toString();
					System.out.println(userjson);
					return userjson;
				}
				if (cookies.length == i) {
					return "";
				}
			}
		}
		return null;
	}

	@RequestMapping(value = "/userInfo.do")
	public String userInfo(HttpServletRequest request, HttpSession session, HttpServletResponse response,
			Model model, ShrioUser shrioUser,String id) {
			System.out.println("id            "+id);
			ShrioUser userInfo = userService.selectYuangongById(id);
			model.addAttribute("userInfo", userInfo);
		return "userInfo";
	}
	
	@RequestMapping(value = "/updateUserInfo.do")
	public String updateUserInfo(HttpServletRequest request, HttpSession session, HttpServletResponse response,
			Model model, ShrioUser shrioUser,String id) {
			System.out.println("id            "+id);
			int i = userService.updateYuangong(shrioUser);
			ShrioUser userInfo = userService.selectYuangongById(id);
			model.addAttribute("userInfo", userInfo);
		return "userInfo";
	}


}
