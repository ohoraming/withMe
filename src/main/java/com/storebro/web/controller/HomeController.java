package com.storebro.web.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping("/")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("")
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
//		String a = null;
//		try {
//			if(a==null) 
//				throw new NullPointerException();
//		} catch(Exception e) {
//			e.printStackTrace();
//		}
		return "root.index";
	}
	
	@GetMapping("error/notFound")
	public String error() {
		System.out.println("test");
		return "error.notFound";
	}
	
}
