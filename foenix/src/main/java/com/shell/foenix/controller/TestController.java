package com.shell.foenix.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {

	
	@GetMapping("/test")
	public ModelAndView testView() {
		ModelAndView model = new ModelAndView("test");
		return model;
	}
	
	@PostMapping("/testPost")
	public ModelAndView testPost() {
		ModelAndView model = new ModelAndView("test");
		model.addObject("submitExternal","true");
		return model;
	}
}
