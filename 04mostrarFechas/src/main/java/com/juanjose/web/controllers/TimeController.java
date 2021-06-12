package com.juanjose.web.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TimeController {
	
	@RequestMapping("/time")
	public String timeMapping(Model model) {
		
		String tiempoPatron = "HH:MM a";
		SimpleDateFormat tiempoFormato = new SimpleDateFormat(tiempoPatron);
		String date = tiempoFormato.format(new Date());
		
		model.addAttribute("date",date);
		
		return "timePage.jsp";
	}
}
