package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Hospital;
import com.klef.jfsd.springboot.repository.HospitalRepository;

@Service
public class HospitalServiceImpl implements HospitalService
{
	@Autowired
	private HospitalRepository hospitalRepository;

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

}
