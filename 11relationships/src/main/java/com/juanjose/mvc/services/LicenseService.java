package com.juanjose.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.juanjose.mvc.models.License;
import com.juanjose.mvc.repositories.LicenseRepositoy;


@Service
public class LicenseService {

	private final LicenseRepositoy licenseRepository;
	
	public LicenseService(LicenseRepositoy licenseRepositoy) {
		this.licenseRepository = licenseRepositoy;
	}
	
	public License addLicense(License l) {
		return licenseRepository.save(l);
	}
	
	public Optional<License> getLicense(Long id){
		return licenseRepository.findById(id);
	}
	
	
	// GETTER AND SETTER LICENSE NUMBER
	public static int licenseNumber;
	
	public static int getLicenseNumber() {
		return licenseNumber;
	}
	
	public static void setLicenseNumber(int licenseNumber) {
		LicenseService.licenseNumber = licenseNumber;
	}
	
	public String stringLicenseNumber(int number) {
		String formatNumber = String.format("%06d", number);
		return formatNumber;
	}
	
	public String generateLicenseNumber() {
		if (licenseRepository.findTopByOrderByNumberDesc().isEmpty()) {
			licenseNumber +=1;
			return stringLicenseNumber(licenseNumber);
		}else {
			List<License> topTen = licenseRepository.findTopByOrderByNumberDesc();
			licenseNumber = 1+(Integer.parseInt(topTen.get(0).getNumber()));
			return stringLicenseNumber(licenseNumber);
		}
	}
	
}
