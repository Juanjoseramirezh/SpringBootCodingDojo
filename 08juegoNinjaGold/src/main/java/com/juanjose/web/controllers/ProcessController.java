package com.juanjose.web.controllers;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProcessController {
	@RequestMapping(value = "/accion", method = RequestMethod.POST)
	public String accionForm(@RequestParam(value = "construccion") String construccion, HttpSession session) {
		String timeActivities = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
		ArrayList<String> historial = (ArrayList<String>) session.getAttribute("actividad");
		
		if(construccion.equals("farm")) {	
			int num = ThreadLocalRandom.current().nextInt(10, 20+1);
			int gold = (int) session.getAttribute("gold");
			session.setAttribute("gold", gold + num);
			
			historial.add(0,"You entered a farm and earned" + num + "gold.("+timeActivities+")");
		}
		else if(construccion.equals("cave")) {	
			int num = ThreadLocalRandom.current().nextInt(5, 10+1);
			int gold = (int) session.getAttribute("gold");
			session.setAttribute("gold", gold + num);
			
			historial.add(0,"You entered a cave and earned" + num + "gold.("+timeActivities+")");
		}
		else if(construccion.equals("house")) {	
			int num = ThreadLocalRandom.current().nextInt(5, 10+1);
			int gold = (int) session.getAttribute("gold");
			session.setAttribute("gold", gold + num);
			
			historial.add(0,"You entered a house and earned" + num + "gold.("+timeActivities+")");
		}
		else if(construccion.equals("casino")) {	
			int num = ThreadLocalRandom.current().nextInt(-50, 10+1);
			int gold = (int) session.getAttribute("gold");
			session.setAttribute("gold", gold + num);
			
			
			if (num > 0) {
				historial.add(0,"You entered a casino and earned" + num + "gold.("+timeActivities+")");
			}
			else {
				historial.add(0,"You entered a casino and lost" + num + "gold.("+timeActivities+")");
			}
			
		}
		
		return "redirect:/gold";
	}

}
