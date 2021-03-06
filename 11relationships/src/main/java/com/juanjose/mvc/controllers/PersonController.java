package com.juanjose.mvc.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.juanjose.mvc.models.Person;
import com.juanjose.mvc.services.LicenseService;
import com.juanjose.mvc.services.PersonService;

@Controller
public class PersonController {

	private final PersonService personService;
	private final LicenseService licenseService;
	
	public PersonController(PersonService personService, LicenseService licenseService) {
		this.personService = personService;
		this.licenseService = licenseService;
	}
	
	@RequestMapping("/person/new")
	public String newPerson(@ModelAttribute("addPersonObject") Person person, Model model){
		return "/DriverLicense/createPersonPage.jsp";
	}
	
	@RequestMapping(value="/addperson", method = RequestMethod.POST)
	public String addPerson(@Valid @ModelAttribute("addPersonObject") Person person, BindingResult result) {
		if(result.hasErrors()) {
			return "/DriverLicense/createPersonPage.jsp";
		}
		else {
			personService.addPerson(person);
			return "redirect:/license/new";
		}
	}
	
	@RequestMapping("/person/{id}")
	public String viewDetails(@PathVariable("id") Long id, Model model) {
		model.addAttribute("license", licenseService.getLicense(id).get());
		return "DriverLicense/views.jsp";
	}
}
