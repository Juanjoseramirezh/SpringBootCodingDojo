package com.juanjose.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class Application {

	public static void main(String[] args) {
		SpringApplication.run(Application.class, args);
	}
	
	@RequestMapping("/")
	public String sayHello() {
		return "Hello cliente! How are you doing?";
	}
	
	@RequestMapping("/random")
	public String nuevaCadena() {
		return "Spring Boot is great! so easy to just respond with string";
	}

}
