package com.kiran.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainC {

	@ResponseBody 
	@GetMapping("customer")
	public String index() {
		System.out.println("MainC.index()");
		return "this is kiran kumar reddty";
	}
}
