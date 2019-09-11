package com.college.web.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Faculty {
	
	private String firstname;
	private String lastname;
	private String dob;
	@Id
	private int fid;
	private String email;
	private String mobile;
	private String Gender;
	private String Username;
	private String password;
	private String Address;
	private String city;
	private String pin;
	private String state;
	private String country;
	private String high_qual;
	private String experience;
	private String department;
	private String stream;
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getHigh_qual() {
		return high_qual;
	}
	public void setHigh_qual(String high_qual) {
		this.high_qual = high_qual;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getStream() {
		return stream;
	}
	public void setStream(String stream) {
		this.stream = stream;
	}
	public Faculty(String firstname, String lastname, String dob, int fid, String email, String mobile, String gender,
			String username, String password, String address, String city, String pin, String state, String country,
			String high_qual, String experience, String department, String stream) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.dob = dob;
		this.fid = fid;
		this.email = email;
		this.mobile = mobile;
		Gender = gender;
		Username = username;
		this.password = password;
		Address = address;
		this.city = city;
		this.pin = pin;
		this.state = state;
		this.country = country;
		this.high_qual = high_qual;
		this.experience = experience;
		this.department = department;
		this.stream = stream;
	}
	public Faculty() {
		super();
	}
	@Override
	public String toString() {
		return "Faculty [firstname=" + firstname + ", lastname=" + lastname + ", dob=" + dob + ", fid=" + fid
				+ ", email=" + email + ", mobile=" + mobile + ", Gender=" + Gender + ", Username=" + Username
				+ ", password=" + password + ", Address=" + Address + ", city=" + city + ", pin=" + pin + ", state="
				+ state + ", country=" + country + ", high_qual=" + high_qual + ", experience=" + experience
				+ ", department=" + department + ", stream=" + stream + "]";
	}
	
	
	
	

}
