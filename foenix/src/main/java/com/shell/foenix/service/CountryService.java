package com.shell.foenix.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class CountryService {

	public List<String> getCountryList() {
		List<String> countries = new ArrayList<>();
		countries.add("United states");
		countries.add("Australia");
		countries.add("Abu Dhabi");
		countries.add("Canada");
		countries.add("China");
		countries.add("France");
		countries.add("India");
		countries.add("Bermuda");
		countries.add("Brazil");
		countries.add("Denmark");
		countries.add("Egypt");
		countries.add("Iceland");
		countries.add("Japan");
		countries.add("Kenya");
		countries.add("Malaysia");
		countries.add("Mexico");
		countries.add("Namibia");
		countries.add("Poland");
		countries.add("South Africa");
		countries.add("Turkey");
		countries.add("Zambia");
		return countries;
	}
}
