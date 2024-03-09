package com.klef.jfsd.springboot.model;

import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "hospital_table")
public class Hospital 
{
  @Id
  @GeneratedValue
  private int id;
  
  @Column(nullable = false)
  private Blob hospitalimage;

  @Column(nullable = false,length = 100)
  private String hospitalname;
  
  @Column(nullable = false,length = 100)
  private String specialist;
  
  @Column(nullable = false,length = 100)
  private String specialistname;
  
  @Column(nullable = false,length = 200)
  private String description;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public Blob getHospitalimage() {
	return hospitalimage;
}

public void setHospitalimage(Blob hospitalimage) {
	this.hospitalimage = hospitalimage;
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

public String getSpecialistname() {
	return specialistname;
}

public void setSpecialistname(String specialistname) {
	this.specialistname = specialistname;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

@Override
public String toString() {
	return "Hospital [id=" + id + ", hospitalimage=" + hospitalimage + ", hospitalname=" + hospitalname
			+ ", specialist=" + specialist + ", specialistname=" + specialistname + ", description=" + description
			+ "]";
}
  
}
