package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Appointment;

public interface AppointmentService 
{
	 public Appointment addappointment(Appointment appointment);
	
	public List<Appointment> ViewAllAppointments();
	public Appointment ViewAppointmentByID(int appointmentid);
	public void DeleteAppointmentByID(int appointmentid);
}
