package com.juanjose.web.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ResetController {

	@RequestMapping("/reset")
	public String resetMapping(HttpSession session) {
		session.removeAttribute("count");
		return "contadorPage.jsp";
	}
}
