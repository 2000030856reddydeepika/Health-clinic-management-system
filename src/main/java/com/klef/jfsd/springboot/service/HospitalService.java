package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Hospital;

public interface HospitalService 
{
   public Hospital AddHospital(Hospital hospital);
   public List<Hospital> ViewAllHospitals();
   public Hospital ViewHospitalByID(int hospitalid);
   public void DeleteHospitalByID(int hospitalid);
}
