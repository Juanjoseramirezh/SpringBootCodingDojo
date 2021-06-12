package com.juanjose.web.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DateController {
	
	@RequestMapping("/date")
	public String dateMapping(Model model) {
		
		// MODELANDO EL FORMATO DE LA FECHA, DIA, NUMERO MES, AÑO
		String fechaPatron = "EEEE, dd MMMMM, yyyy"; 
		SimpleDateFormat fechaFormato = new SimpleDateFormat(fechaPatron);
		String date = fechaFormato.format(new Date());
		
		model.addAttribute("date", date);
		
		return "datePage.jsp";
	}
}
