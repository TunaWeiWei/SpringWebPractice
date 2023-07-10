package com.web.billy.controller;

import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;

public class controller {
	private String message = "鐵人賽第七天加油!!!";
	 
	@GetMapping("/")
	public String index() {
		return"index";
	}
}
