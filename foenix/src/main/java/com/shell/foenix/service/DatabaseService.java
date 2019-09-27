package com.shell.foenix.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class DatabaseService {
	
	public List<String> getDatabaseList() {
		List<String> databases = new ArrayList<>();
		databases.add("HOU Production");
		databases.add("HOU Development");
		databases.add("AMS Production");
		databases.add("HOU Development");
		return databases;
	}

}
