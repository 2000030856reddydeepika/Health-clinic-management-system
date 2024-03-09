package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.repository.PatientRepository;
@Service
public class PatientServiceImpl implements PatientService
{

	@Autowired
	private PatientRepository patientRepository;
	@Override
	public Patient addpatient(Patient patient) 
	{
		return patientRepository.save(patient);
	}
	
	@Override
	public Patient checkpatientlogin(String puname, String ppwd) 
	{
		
		return patientRepository.checkpatientlogin(puname, ppwd);
	}
   
	

}  
