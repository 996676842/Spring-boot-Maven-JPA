package com.bonc.tender.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	// The user email
	@NotNull
	private String email;
	// The user name
	@NotNull
	private String name;

	// ==============
	// PUBLIC METHODS
	// ==============
	public User() {
		super();
	}

	public User(Integer id, String email, String name) {
		super();
		this.id = id;
		this.email = email;
		this.name = name;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

} // class User
