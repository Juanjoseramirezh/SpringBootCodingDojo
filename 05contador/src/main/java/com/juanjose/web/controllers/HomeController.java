package com.juanjose.web.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/your_server")
	public String indexMapping(HttpSession session) {
		return "index.jsp";

	}
}
