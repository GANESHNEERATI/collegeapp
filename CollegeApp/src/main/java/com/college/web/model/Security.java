package com.college.web.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Security {
 
@Id
private 	String key;

public String getKey() {
	return key;
}

public void setKey(String key) {
	this.key = key;
}



	
}
