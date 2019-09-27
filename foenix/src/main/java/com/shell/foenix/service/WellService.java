package com.shell.foenix.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.shell.foenix.model.Well;

@Service
public class WellService {

	public List<Well> getWellList(String country) {
		List<Well> wells = new ArrayList<>();
		for (int i = 0; i < 15; i++) {
				wells.add(createWell("W000"+i, "Well-"+i, country, "C000"));
		}
		return wells;
	}

	private Well createWell(String wellCode, String wellName, String countryName, String countryCode) {
		Well well = new Well();
		well.setCountryCode(countryCode);
		well.setCountryName(countryName);
		well.setWellCode(wellCode);
		well.setWellName(wellName);
		return well;
	}
}
