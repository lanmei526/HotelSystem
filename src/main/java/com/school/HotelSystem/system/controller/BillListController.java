package com.school.HotelSystem.system.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.school.HotelSystem.system.model.TravellerInfo;
import com.school.HotelSystem.system.service.BillService;

import net.sf.json.JSONArray;

@Controller
public class BillListController {

	@Autowired
	private BillService billService;
	@RequestMapping(value="/tableList.do")
	public String billList(HttpServletRequest req,HttpServletResponse resp,TravellerInfo travellerInfo,Model model) {
		List<TravellerInfo> travelInfoList = billService.queryTravelInfoList();
		//System.out.println(travelInfoList.toString());
		model.addAttribute("travelInfoList", travelInfoList);
		return "info/tableList";
	}
	
	@RequestMapping(value="/tableListBySome.do")
	public void billListBySome(HttpServletRequest req,HttpServletResponse resp,TravellerInfo travellerInfo,Model model,String keyword) throws IOException {
		req.setCharacterEncoding("utf-8");
		 resp.setContentType("text/html;charset=utf-8");
		PrintWriter pw=resp.getWriter();
		//System.out.println("roomType    "+roomType);
		System.out.println("name    "+keyword);
		//System.out.println("YYYY    "+YYYY);
		//System.out.println("MM    "+MM);
		String roomType="%" + keyword + "%";
		String travellerName="%" + keyword + "%";
		//String travellerInTime="%"+YYYY+MM+"%";
		List<TravellerInfo> travelInfoList = billService.queryTravelInfoListBySome(travellerName,roomType);
		System.out.println(travelInfoList.toString());
		 JSONArray jsonArray =new JSONArray().fromObject(travelInfoList); 
		 String InfoList=jsonArray.toString(); 
		 req.setAttribute("InfoList", InfoList);
		 
		 pw.write(InfoList);
		//System.out.println(travelInfoList.toString());
		//model.addAttribute("travelInfoList", travelInfoList);
	}
	
	/*
	 * @InitBinder public void initBinder(WebDataBinder binder) { DateFormat
	 * dateFormat = new SimpleDateFormat("yyyy-MM-dd"); dateFormat.setLenient(true);
	 * binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat,
	 * true)); }
	 */
	
}
