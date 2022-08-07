package com.kiran.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.kiran.service.IProductService;

@Controller

public class ProductController {

	@Autowired
	private IProductService productService;

	//@RequestMapping(method = RequestMethod.GET)
	@RequestMapping("/")
	public String index() {
		System.out.println("kkkkkkkkkkkkkkkkkkkkk");
		return "index";
	}

	/*
	 * @RequestMapping(value = "search", method = RequestMethod.GET)
	 * 
	 * @ResponseBody public List<String> search(HttpServletRequest request) { return
	 * productService.search(request.getParameter("term")); }
	 */
}
