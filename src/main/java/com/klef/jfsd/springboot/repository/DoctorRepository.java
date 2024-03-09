package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.model.Doctor;

public interface DoctorRepository extends CrudRepository <Doctor, Integer>  

{
	@Query("select d from Doctor d where username=?1 and password=?2")
	public Doctor checkdoctorlogin(String uname,String pwd); 
}
