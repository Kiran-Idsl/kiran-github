package com.kiran;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.Ordered;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.BeanNameViewResolver;

@SpringBootApplication
public class PdfExcelApplication {

	@Bean
	public   ViewResolver createBNVResolver() {
		 BeanNameViewResolver resolver=new BeanNameViewResolver();
		 resolver.setOrder(Ordered.HIGHEST_PRECEDENCE);
		 return resolver;
	}
	public static void main(String[] args) {
		SpringApplication.run(PdfExcelApplication.class, args);
	}

}
