package com.sapient.pe.tutorial;

public class Person {
	
	private int age;
	private String name;
	private String maritalStatus;
	private Address address;
	
	public Person(int age, String name, String maritalStatus, Address address) {
		super();
		this.age = age;
		this.name = name;
		this.maritalStatus = maritalStatus;
		this.address = address;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	
	

}
