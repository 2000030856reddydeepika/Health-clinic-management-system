package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.repository.AppointmentRepository;

@Service
public class AppointmentServiceImpl implements AppointmentService
{
	@Autowired
	private AppointmentRepository appointmentRepository;

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

	@Override
	public Appointment addappointment(Appointment appointment) {
	 return appointmentRepository.save(appointment);
	 
	}

}
