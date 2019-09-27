package com.shell.foenix.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class ModuleService {
	
	public List<String> getModuleList(){
		List<String> modules = new ArrayList<>();
		modules.add("Correlation");
		modules.add("Data management");
		modules.add("Analysis");
		return modules;
	}

}
