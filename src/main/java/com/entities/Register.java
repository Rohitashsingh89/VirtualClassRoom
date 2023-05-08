package com.entities;

import java.io.Serializable;

import com.EnumOfUserType.User;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

@Entity
@Table(name = "users", uniqueConstraints = {@UniqueConstraint(columnNames = {"email"})})

public class Register implements Serializable {
	
	private static final long serialVersionUID = 1 ;
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
	
	private String Name;
	private String Phone;
	
	@Column(unique = true)
	private String Email;
	
	private String Password;
	private String CollegeName;
	
	@Enumerated(EnumType.STRING)
    private User UserType;

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
		
	public String getCollegeName() {
		return CollegeName;
	}
	public void setCollegeName(String collegeName) {
		CollegeName = collegeName;
	}
	
	public User getUserType() {
		return UserType;
	}
	public void setUserType(User userType) {
		UserType = userType;
	}
	public Register(String email, String password) {
		super();
		Email = email;
		Password = password;
	}
	
	
	
	public Register(String name, String phone, String email, String password, String collegeName, User userType) {
		super();
		Name = name;
		Phone = phone;
		Email = email;
		Password = password;
		CollegeName = collegeName;
		UserType = userType;
	}
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	@Override
	public String toString() {
		return "Register [id=" + id + ", Name=" + Name + ", Phone=" + Phone + ", Email=" + Email + ", Password="
				+ Password + "]";
	}
	
	
	
	
	
}
