package com.shell.foenix.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DataManagementController {

	@GetMapping("/datamgmnt")
	public String getDatabaseList() {
		return "data_management";
	}
}
