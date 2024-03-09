package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.Patient;
  
public interface PatientRepository extends CrudRepository<Patient, Integer> 

{
	@Query("select p from Patient p where username=?1 and password=?2")
	public Patient checkpatientlogin(String uname,String pwd);     
	
	
}