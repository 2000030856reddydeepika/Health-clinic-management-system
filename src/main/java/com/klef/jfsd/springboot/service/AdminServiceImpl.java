package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Hospital;
import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.AppointmentRepository;
import com.klef.jfsd.springboot.repository.DoctorRepository;
import com.klef.jfsd.springboot.repository.HospitalRepository;
import com.klef.jfsd.springboot.repository.PatientRepository;

@Service
public class AdminServiceImpl implements AdminService
{
     @Autowired
	private AdminRepository adminRepository;
     @Autowired
     private PatientRepository patientRepository;
     @Autowired
     private DoctorRepository doctorRepository;
     @Autowired
 	 private HospitalRepository hospitalRepository;


     // ADMIN MODULE
     
	@Override
	
	public Admin checkadminlogin(String auname, String apwd) 
	
	{
		
	    return adminRepository.checkadminlogin(auname, apwd);
	}

	// PATIENT MODULE


	@Override
	public List<Patient> viewallpatients() {
	
		return (List<Patient>) patientRepository.findAll();
	}

	@Override
	public void deletepatient(int pid)
	{
		  patientRepository.deleteById(pid);
		
	}

	@Override
	  public Patient viewpatientbyid(int pid) 
	  {
	    
	    return patientRepository.findById(pid).get();
	  }
	
	
	public Patient addpatient(Patient patient) 
	{
		return patientRepository.save(patient);
	}

	// DOCTOR MODULE
	
	@Override
	public Doctor adddoctor(Doctor doctor)
	
	{
		
		return doctorRepository.save(doctor);

	}
	
	@Override
	public List<Doctor> viewallDoctors() 
	{
		return (List<Doctor>) doctorRepository.findAll();
	}

	@Override
	public void deletedoctor(int did) 
	{
		  doctorRepository.deleteById(did);
		
	}

	@Override
	public Doctor viewdoctorbyid(int did)
	{
		  return doctorRepository.findById(did).get();
	}
	
	//HOSPITAL 
	
	@Override
	public Hospital AddHospital(Hospital hospital) 
	{
		return hospitalRepository.save(hospital);
	}

	@Override
	public List<Hospital> ViewAllHospitals() 
	{
		return (List<Hospital>) hospitalRepository.findAll();
	}

	@Override
	public Hospital ViewHospitalByID(int hospitalid) 
	{
		return hospitalRepository.findById(hospitalid).get();
	}

	@Override
	public void DeleteHospitalByID(int hospitalid) 
	{
		hospitalRepository.deleteById(hospitalid);
		
	}
	
	//APPOINTMENT
	
	@Autowired
	private AppointmentRepository appointmentRepository;

	@Override
	public Appointment AddAppointment(Appointment appointment) 
	{
		return appointmentRepository.save(appointment);
	}

	@Override
	public List<Appointment> ViewAllAppointments() 
	{
		return (List<Appointment>) appointmentRepository.findAll();
	}

	@Override
	public Appointment ViewAppointmentByID(int appointmentid) 
	{
		return appointmentRepository.findById(appointmentid).get();
	}

	@Override
	public void DeleteAppointmentByID(int appointmentid) 
	{
		appointmentRepository.deleteById(appointmentid);
		
	}
     
}
