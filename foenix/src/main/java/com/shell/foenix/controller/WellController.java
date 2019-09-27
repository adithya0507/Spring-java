package com.shell.foenix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shell.foenix.service.DatabaseService;
import com.shell.foenix.service.ModuleService;
import com.shell.foenix.service.WellService;

@Controller
public class WellController {

	@Autowired
	private WellService wellService;
	
	@Autowired
	private DatabaseService dbService;
	
	@Autowired
	private ModuleService moduleService;
	
	@GetMapping("/well")
	public ModelAndView getWells(){
		ModelAndView model = new ModelAndView("well");
		model.addObject("dbList", dbService.getDatabaseList());
		model.addObject("modules", moduleService.getModuleList());
		model.addObject("wells",wellService.getWellList("United states"));
		return model;
	}
}
