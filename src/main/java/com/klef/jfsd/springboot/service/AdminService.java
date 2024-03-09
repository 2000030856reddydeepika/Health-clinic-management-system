
package com.klef.jfsd.springboot.service;   

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Hospital;
import com.klef.jfsd.springboot.model.Patient;



public interface AdminService 

{
    // Admin Module
	  public Admin checkadminlogin(String auname,String apwd);
	  
	  
	  
	  //Trainer Module
	
	  public List<Doctor> viewallDoctors();
	  
	  public void deletedoctor(int did);
	  
      public Doctor viewdoctorbyid(int did);
      
	  public Doctor adddoctor(Doctor doctor);

	  
	  
	  // Student Module
	  
	  public void deletepatient(int pid);
	  
	  public Patient viewpatientbyid(int pid);
	  
	  public Patient addpatient(Patient patient);
	  
	  public List<Patient> viewallpatients();
	  
	  
	  
	  
	  //hospital
	  public Hospital AddHospital(Hospital hospital);
	  
	  public List<Hospital> ViewAllHospitals();
	   
	  public Hospital ViewHospitalByID(int hospitalid);
	   
	  public void DeleteHospitalByID(int hospitalid);
	  
	  
	  
	    //appointment 
		public Appointment AddAppointment(Appointment appointment);
		
		public List<Appointment> ViewAllAppointments();
		
		public Appointment ViewAppointmentByID(int appointmentid);
		
		public void DeleteAppointmentByID(int appointmentid);

}
