package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.repository.DoctorRepository;
@Service
public  class DoctorServiceImpl implements DoctorService
{
	@Autowired
	private DoctorRepository DoctorRepository;
	
	
	public Doctor adddoctor(Doctor doctor) 
	{
		return DoctorRepository.save(doctor);
	}
	
	public Doctor checkdoctorlogin(String duname, String dpwd) 
	{
		
		return DoctorRepository.checkdoctorlogin(duname, dpwd);
	}



	
}
