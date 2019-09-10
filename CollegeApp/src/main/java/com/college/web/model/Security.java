package com.college.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.NotFound;

@Entity
public class Security {
 
@Id
@GeneratedValue(strategy = GenerationType.IDENTITY)
private 	String key;

public String getKey() {
	return key;
}

public void setKey(String key) {
	this.key = key;
}

public Security(String key) {
	super();
	this.key = key;
}

public Security() {
	super();
}









	
}
