package com.college.web.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class AluminiDetails {
	private String firstname;
	private String lastname;
	@Id
	private int studentid;
	private String gender;
	private String dob;
	private String Address;
	private String email;
	private String contactno;
	private String yearofpass;
	private String course;
	private String Stream;
	private String pass;
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
	public int getStudentid() {
		return studentid;
	}
	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getYearofpass() {
		return yearofpass;
	}
	public void setYearofpass(String yearofpass) {
		this.yearofpass = yearofpass;
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
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public AluminiDetails(String firstname, String lastname, int studentid, String gender, String dob, String address,
			String email, String contactno, String yearofpass, String course, String stream, String pass) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.studentid = studentid;
		this.gender = gender;
		this.dob = dob;
		Address = address;
		this.email = email;
		this.contactno = contactno;
		this.yearofpass = yearofpass;
		this.course = course;
		Stream = stream;
		this.pass = pass;
	}
	public AluminiDetails() {
		super();
	}
	@Override
	public String toString() {
		return "AluminiDetails [firstname=" + firstname + ", lastname=" + lastname + ", studentid=" + studentid
				+ ", gender=" + gender + ", dob=" + dob + ", Address=" + Address + ", email=" + email + ", contactno="
				+ contactno + ", yearofpass=" + yearofpass + ", course=" + course + ", Stream=" + Stream + ", pass="
				+ pass + "]";
	}
	
	
	
	
	

}
