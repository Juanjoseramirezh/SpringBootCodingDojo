package com.juanjose.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/your_server")
public class HumanController {
	
	@RequestMapping("/")
	public String helloHuma(@RequestParam(value = "name", required = false) String searchQuery) {
		if (searchQuery != null) {
			return "Hello " +  searchQuery + "!";
		}
		else{
			return "Hello Human!"; 
		}
	}
}
