package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "appointment_table")
public class Appointment 
{
  @Id
  @GeneratedValue
  private int id;

  @Column(nullable = false,length = 100)
  private String hospitalname;
  
  @Column(nullable = false,length = 100)
  private String specialist;
  
  @Column(nullable = false,length = 200)
  private String problem;
  
  @Column(nullable = false,length = 200)
  private String date;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getHospitalname() {
	return hospitalname;
}

public void setHospitalname(String hospitalname) {
	this.hospitalname = hospitalname;
}

public String getSpecialist() {
	return specialist;
}

public void setSpecialist(String specialist) {
	this.specialist = specialist;
}

public String getProblem() {
	return problem;
}

public void setProblem(String problem) {
	this.problem = problem;
}

public String getDate() {
	return date;
}

public void setDate(String date) {
	this.date = date;
}

@Override
public String toString() {
	return "Appointment [id=" + id + ", hospitalname=" + hospitalname + ", specialist=" + specialist + ", problem="
			+ problem + ", date=" + date + "]";
}

  
}
