package com.juanjose.web.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SurveyProcessController {
	@RequestMapping(value = "/surveyDojo", method = RequestMethod.POST)
	public String result(@RequestParam(value = "username") String username,
			@RequestParam(value = "location") String location, @RequestParam(value = "language") String language,
			@RequestParam(value = "comment") String comment, HttpSession session) {
		
		if(language.equals("java")) {
			session.setAttribute("username", username);
			session.setAttribute("language", language);
			return "secretPage.jsp";
		}
		
		else {
			session.setAttribute("username", username);
			session.setAttribute("location", location);
			session.setAttribute("language", language);
			session.setAttribute("comment", comment);
			return "resultPage.jsp";
		}
		
		
	}
}
