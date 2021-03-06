package com.juanjose.web.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContadorController {

	@RequestMapping("/counter")
	public String counterMapping(HttpSession session) {
		if (session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
		}
		Integer count = (Integer) session.getAttribute("count");
		count +=1;
		session.setAttribute("count", count);

		return "contadorPage.jsp";
	}
}
