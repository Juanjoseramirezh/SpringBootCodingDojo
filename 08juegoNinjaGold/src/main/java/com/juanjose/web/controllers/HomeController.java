package com.juanjose.web.controllers;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/gold")
	public String index(HttpSession session) {

		if (session.getAttribute("gold") == null) {
			session.setAttribute("gold", 0);
			session.setAttribute("actividad", new ArrayList<String>());
		}
		return "ninjaGoldPage.jsp";
	}

}
