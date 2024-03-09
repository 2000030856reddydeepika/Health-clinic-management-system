package com.klef.jfsd.springboot.service;

import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Doctor;

@Repository
public interface DoctorService 

{

	  public Doctor adddoctor(Doctor doctor);
	  public Doctor checkdoctorlogin(String duname,String dpwd);


	
}
