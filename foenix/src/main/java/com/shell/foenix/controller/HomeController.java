package com.shell.foenix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.shell.foenix.service.DatabaseService;
import com.shell.foenix.service.ModuleService;

@Controller
public class HomeController {

	@Autowired
	private DatabaseService dbService;
	
	@Autowired
	private ModuleService moduleService;
	
	@GetMapping("/")
	public String foenixHome() {
		ModelAndView model = new ModelAndView("foenix");
		model.addObject("dbList", dbService.getDatabaseList());
		model.addObject("modules", moduleService.getModuleList());
		return "foenix";
	}
}
