package com.kiran.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kiran.entity.JobSeekerInfo;
import com.kiran.service.IJobSeekerMgmtService;

@Controller
public class MainController {
@Autowired
private IJobSeekerMgmtService service;
	
	@GetMapping("/")
	public  String showHomePage() {
		//return LVN
		return "welcome";
	}
	
	@GetMapping("/report")
	public  String  showReport(Map<String,Object> map,
			                                        @RequestParam("type") String type) {
		//use  service
		List<JobSeekerInfo> empsList=service.fetchAllJobseekers();
		// add results to model attribute
		map.put("empsList", empsList);
		//return lvn based on the hyperlink that is clicked
		 if(type.equalsIgnoreCase("excel")) 
			 return  "excel_report";
		 else 
			 return "pdf_report";
		 
	}
}
