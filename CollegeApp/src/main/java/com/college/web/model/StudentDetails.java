package com.college.web.model;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class StudentDetails {
	
	private String First_name;
	private String Last_name;
	private String dob;
	@Id
	private int  application_id;
	
	private String email;
	private long Mobile_no;
	private String gender;
	private String Username;
	private String passsword;
	private String Address;
	private String City;
	private long pincode;
	private String  State;
	private String country;
	private String Highest_qualification;
	private String percentage;
	private String course;
	private String Stream;
	public StudentDetails(String first_name, String last_name, String dob, int application_id, String email,
			long mobile_no, String gender, String username, String passsword, String address, String city, long pincode,
			String state, String country, String highest_qualification, String percentage, String course,
			String stream) {
		super();
		First_name = first_name;
		Last_name = last_name;
		this.dob = dob;
		this.application_id = application_id;
		this.email = email;
		Mobile_no = mobile_no;
		this.gender = gender;
		Username = username;
		this.passsword = passsword;
		Address = address;
		City = city;
		this.pincode = pincode;
		State = state;
		this.country = country;
		Highest_qualification = highest_qualification;
		this.percentage = percentage;
		this.course = course;
		Stream = stream;
	}
	public String getFirst_name() {
		return First_name;
	}
	public void setFirst_name(String first_name) {
		First_name = first_name;
	}
	public String getLast_name() {
		return Last_name;
	}
	public void setLast_name(String last_name) {
		Last_name = last_name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getApplication_id() {
		return application_id;
	}
	public void setApplication_id(int application_id) {
		this.application_id = application_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getMobile_no() {
		return Mobile_no;
	}
	public void setMobile_no(long mobile_no) {
		Mobile_no = mobile_no;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPasssword() {
		return passsword;
	}
	public void setPasssword(String passsword) {
		this.passsword = passsword;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	public long getPincode() {
		return pincode;
	}
	public void setPincode(long pincode) {
		this.pincode = pincode;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getHighest_qualification() {
		return Highest_qualification;
	}
	public void setHighest_qualification(String highest_qualification) {
		Highest_qualification = highest_qualification;
	}
	public String getPercentage() {
		return percentage;
	}
	public void setPercentage(String percentage) {
		this.percentage = percentage;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getStream() {
		return Stream;
	}
	public void setStream(String stream) {
		Stream = stream;
	}
	public StudentDetails() {
		super();
	}
	@Override
	public String toString() {
		return "StudentDetails [First_name=" + First_name + ", Last_name=" + Last_name + ", dob=" + dob
				+ ", application_id=" + application_id + ", email=" + email + ", Mobile_no=" + Mobile_no + ", gender="
				+ gender + ", Username=" + Username + ", passsword=" + passsword + ", Address=" + Address + ", City="
				+ City + ", pincode=" + pincode + ", State=" + State + ", country=" + country
				+ ", Highest_qualification=" + Highest_qualification + ", percentage=" + percentage + ", course="
				+ course + ", Stream=" + Stream + "]";
	}
	
	
	
	
	
	
	
	
	

}
