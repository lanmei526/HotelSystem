package com.school.HotelSystem.system.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.HotelSystem.system.model.ShrioUser;
import com.school.HotelSystem.system.service.UserService;

import frame.utils.PrimaryKeyUtil;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;


/**   
*    
* 项目名称：HotelSystem   
* 类名称：UserController   
* 类描述：   系统后台管理人员的信息管理
* 创建人：蓝春梅   
* 创建时间：2020年3月9日 下午8:42:18   
* @version        
*/
@Controller
public class UserController {
	@Autowired
	private UserService userService;

	/**用户列表*/
	@RequestMapping(value="/yuangongList.do")
	public String yuangongList(HttpServletRequest req,HttpServletResponse resp,ShrioUser shrioUser,Model model) {
		List<ShrioUser> yuangongList = userService.queryYuangongList();
		//System.out.println(yuangongList.toString());
		model.addAttribute("yuangongList", yuangongList);
		/*
		 * try { PrintWriter pw=resp.getWriter(); if(yuangongList!=null) {
		 * pw.write("success"); } } catch (IOException e) { e.printStackTrace(); }
		 * return null;
		 */
		
		return "yuangong/yuangongList";	
	}
	
	/**修改用户信息的信息回写*/
	@RequestMapping(value="/updateUI.do")
	public String UpdateUI(HttpServletRequest req,HttpServletResponse resp,ShrioUser shrioUser,Model model,String id) {
		ShrioUser update = userService.selectYuangongById(id);
		model.addAttribute("update", update);
		return "yuangong/updateUI";	
	}
	/**信息修改 */
	@RequestMapping(value="/update.do")
	public String Update(HttpServletRequest req,HttpServletResponse resp,ShrioUser shrioUser,Model model,String id) {
		int i=userService.updateYuangong(shrioUser);
		List<ShrioUser> yuangongList = userService.queryYuangongList();
		model.addAttribute("yuangongList", yuangongList);
		return "yuangong/yuangongList";	
	}
	
	@RequestMapping(value="/addUI.do")
	public String AddUI(HttpServletRequest req,HttpServletResponse resp,ShrioUser shrioUser,Model model,String id) {
		return "yuangong/addUI";	
	}
	/**添加用户 */
	@RequestMapping(value="/add.do")
	public String add(HttpServletRequest req,HttpServletResponse resp,ShrioUser shrioUser,Model model) {
		shrioUser.setPassword("123456");
		if(req.getParameter("choose").equals("0")) {
			shrioUser.setSex("男");
		}else {
			shrioUser.setSex("女");
		}
		
		shrioUser.setId(PrimaryKeyUtil.getPrimaryKey());
		shrioUser.setUsercode(PrimaryKeyUtil.getUserCode());
	//	System.out.println(shrioUser.toString());
		int i=userService.insertYuangong(shrioUser);
		List<ShrioUser> yuangongList = userService.queryYuangongList();
		model.addAttribute("yuangongList", yuangongList);
		return "yuangong/yuangongList";	
	}
	
	/**删除用户*/
	@RequestMapping(value="/delete.do")
	public String delete(HttpServletRequest req,HttpServletResponse resp,ShrioUser shrioUser,Model model,String id) {
		int i=userService.deleteYuangong(id);
		List<ShrioUser> yuangongList = userService.queryYuangongList();
		model.addAttribute("yuangongList", yuangongList);
		return "yuangong/yuangongList";	
	}
	
	@RequestMapping(value="/searchUser.do")
	public void searchUser(HttpServletRequest req,HttpServletResponse resp,ShrioUser shrioUser,Model model,String name) throws IOException, ServletException {
		req.setCharacterEncoding("utf-8");
		 resp.setContentType("text/html;charset=utf-8");
		PrintWriter pw=resp.getWriter();
		String username="%" + name + "%";
		String roleName="%" + name + "%";
		List<ShrioUser> all = userService.queryUserByAll(username,roleName);
	
		
		 JSONArray jsonArray =new JSONArray().fromObject(all); 
		 String yuangongList=jsonArray.toString(); 
		 req.setAttribute("yuangongList", yuangongList);
		 //System.out.println(all);
		 pw.write(yuangongList);
		//req.getRequestDispatcher("/yuangong/yuangongList.jsp").forward(req, resp);
//		model.addAttribute("yuangongList", all);
//		return "yuangong/yuangongList";	
		 
	}
}
