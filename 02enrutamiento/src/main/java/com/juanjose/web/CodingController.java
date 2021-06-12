package com.juanjose.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/coding")
public class CodingController {
	
	@RequestMapping("")
	public String firstMapping() {
		return "Hola Coding Dojo!";
	}
	
	@RequestMapping("/python")
	public String secondMapping(){
		return "Python/Django fue increíble!";
	}
	
	@RequestMapping("/java")
	public String thirdMapping() {
		return "¡Java/Spring es mejor!";
	}
}
