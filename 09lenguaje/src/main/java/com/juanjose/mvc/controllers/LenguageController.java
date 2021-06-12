package com.juanjose.mvc.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.juanjose.mvc.models.Lenguage;
import com.juanjose.mvc.services.LenguageService;

@Controller
public class LenguageController {
	private final LenguageService lenguajeService;
	
	public LenguageController(LenguageService lenguageService) {
		this.lenguajeService = lenguageService;
	}
	
	@RequestMapping("lenguage")
	public String index(Model model) {
		List<Lenguage> lenguages = lenguajeService.AllLenguage();
		model.addAttribute("lenguages",lenguages);
		return "/lenguages/index.jsp";
	}
	@RequestMapping(value="/lenguage", method= RequestMethod.POST)
	public String add(@Valid @ModelAttribute("addLeng") Lenguage lenguage, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Lenguage> lenguages = lenguajeService.AllLenguage();
			model.addAttribute("lenguages", lenguages);
			return "lenguages/index.jsp";
		}
		else {
			lenguajeService.createLenguage(lenguage);
			return "redirect:/lenguage";
		}
	}
	
	@RequestMapping("/lenguage/edit/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		Lenguage lenguage = lenguajeService.findLenguage(id);
		model.addAttribute("lenguage", lenguage);
		return "/lenguages/edit.jsp";
	}
	
	@RequestMapping(value="/lenguage/edit/{id}", method = RequestMethod.PUT)
	public String update(@Valid @ModelAttribute("modLeng") Lenguage lenguage, BindingResult result) {
		if(result.hasErrors()) {
			return "/lenguages/edit.jsp";
		}
		else {
			lenguajeService.updateLenguage(lenguage);
			return "redirect:/lenguage";
		}
	}
	

	@RequestMapping("/lenguage/show/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		Lenguage lenguage = lenguajeService.findLenguage(id);
		model.addAttribute("lenguage", lenguage);
		return "/lenguages/show.jsp";
	}
	
	
	
	@RequestMapping(value = "/lenguage/delete/{id}", method = RequestMethod.DELETE)
	public String destroy(@PathVariable("id") Long id) {
		return "redirect:/lenguage";
	}
	

}
