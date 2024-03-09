package com.klef.jfsd.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Doctor_table")
public class Doctor 
{
  @Id
  @GeneratedValue
   private int id;
  @Column(nullable = false,length = 200)
   private String name;
  @Column(nullable = false,length = 10)
   private String gender;
  @Column(nullable = false,length = 200)
  
  private String emailid;
  @Column(nullable = false,unique = true,length = 200)
   private String username;
  @Column(nullable = false,unique=true,length = 200)
   private String password;
  @Column(nullable = false,length = 200)
  private String contactno;
  
  @Column(nullable = false,length = 200)
  private int experience;
  
  @Column(nullable = false,length = 200)
  private String specialization;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getEmailid() {
	return emailid;
}

public void setEmailid(String emailid) {
	this.emailid = emailid;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getContactno() {
	return contactno;
}

public void setContactno(String contactno) {
	this.contactno = contactno;
}

public int getExperience() {
	return experience;
}

public void setExperience(int experience) {
	this.experience = experience;
}

public String getSpecialization() {
	return specialization;
}

public void setSpecialization(String specialization) {
	this.specialization = specialization;
}

@Override
public String toString() {
	return "Doctor [id=" + id + ", name=" + name + ", gender=" + gender + ", emailid=" + emailid + ", username="
			+ username + ", password=" + password + ", contactno=" + contactno + ", experience=" + experience
			+ ", specialization=" + specialization + "]";
}
  
  
}
  
   
