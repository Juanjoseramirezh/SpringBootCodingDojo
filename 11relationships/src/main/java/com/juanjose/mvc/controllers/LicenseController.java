package com.juanjose.mvc.controllers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.juanjose.mvc.models.License;
import com.juanjose.mvc.models.Person;
import com.juanjose.mvc.services.LicenseService;
import com.juanjose.mvc.services.PersonService;

@Controller
public class LicenseController {
	private final LicenseService licenseService;

	public LicenseController(LicenseService licenseService) {
		this.licenseService = licenseService;
	}
	@Autowired
	private PersonService personService;

	@RequestMapping("/license/new")
	public String newLicense(@ModelAttribute("addLicenseObject") License lincese, Model model) {
		List<Person> personsList = personService.allPerson();
		model.addAttribute("personsList", personsList);
		ArrayList<String> states = new ArrayList<String>(Arrays.asList("Estado1", "Estado2","Estado3", "Estado4"));
		model.addAttribute("states", states);
		
		return "/DriverLicense/createLicensePage.jsp";
		
	}
	
	@RequestMapping(value = "/addlicense", method = RequestMethod.POST)
	public String addLicense(@Valid @ModelAttribute("addLicenseObject") License license, BindingResult result) {
		if (result.hasErrors()) {
			System.out.print("ESTOY SITUADOOOOO AQUI!!!!");
			
			return "/DriverLicense/createLicensePage.jsp";
		}else {
			String number = licenseService.generateLicenseNumber();
			license.setNumber(number);
			licenseService.addLicense(license);
			return "redirect:/person/" + license.getId();
		}
	}
}
