package com.web.billy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class controller {	
	 
	@GetMapping("/")
	public String index() {
		return"index";
	}
	
	@GetMapping("/introduction")
	public String introduction() {
		return"introduction";
	}
	
	@GetMapping("/service")
	public String service() {
		return"service";
	}
	
	@GetMapping("/login")
	public String login() {
		return"login";
	}
	
	@GetMapping("/memberCreate")
	public String memberCreate() {
		return"memberCreate";
	}
}
