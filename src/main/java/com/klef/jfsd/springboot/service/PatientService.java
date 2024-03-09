package com.klef.jfsd.springboot.service;

import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Patient;
;
@Repository
public interface PatientService
{
	
  public Patient addpatient(Patient patient);
  public Patient checkpatientlogin(String puname,String ppwd);
}
