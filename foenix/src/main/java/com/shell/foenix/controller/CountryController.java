package com.shell.foenix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shell.foenix.service.CountryService;
import com.shell.foenix.service.DatabaseService;
import com.shell.foenix.service.ModuleService;

@Controller
public class CountryController {

	@Autowired
	private DatabaseService dbService;
	
	@Autowired
	private ModuleService moduleService;
	
	@Autowired
	private CountryService countryService;
	
	@GetMapping("/country")
	public ModelAndView countryHome() {
		ModelAndView model = new ModelAndView("country");
		model.addObject("dbList", dbService.getDatabaseList());
		model.addObject("modules", moduleService.getModuleList());
		model.addObject("countries", countryService.getCountryList());
		return model;
	}
	
}
