package com.drillmech.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.drillmech.model.Kiran;

@Controller
public class MainController {

	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("link")
	public String link(@ModelAttribute("kiran") Kiran kk) {
		return "maintable";
	}
	
	@PostMapping("save")
	public String save(@ModelAttribute("kiran") Kiran kk) {
		//String[] id = req.getParameterValues("chk");
		//String[] grade = req.getParameterValues("grade");
		
		List<String> id = kk.getChk();// req.getParameterValues("chk");
		List<String> grade = kk.getGrade();// req.getParameterValues("grade");
		
		for(int i=0; i<id.size();i++) {
			System.out.println("============"+i);
		}
		
		System.out.println(id.size());
		for(String str : id) {
			System.out.println(str);
			
		}
		for(String gdr : grade) {
			if(gdr!=null && gdr!="") {
			System.out.println(gdr);
			}
		}
		/*
		System.out.println(id.length+" kkkkkkk "+grade.length);
		for(int i=0;i<grade.length;i++) {
			System.out.println(" kkiiii  "+i);
			//if(id[i]!=null && id[i]!="") {
			System.out.println(" kiran "+id[i]);
			//}
		}
		*/
System.out.println("hhhhhhhhhhhhhhh");
		return "maintable";
	}
}
