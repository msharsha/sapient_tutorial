package com.sapient.pe.tutorial;

public class Employee {
	private int id;
	private String name;
	private double salary;
	private int vacationDays = 30;
	
	public Employee(int id,String name,double salary)
	{
		this.id = id;
		this.name = name;
		this.salary = salary;
	}

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

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public int getVacationDays() {
		return vacationDays;
	}

	public void setVacationDays(int vacationDays) {
		this.vacationDays = vacationDays;
	}
	public void applyForLeave(int noOfDays) {
		if(this.vacationDays>=noOfDays)
		{
			this.vacationDays=this.vacationDays-noOfDays;
		}
		else
		{
			System.out.println("Sorry no leaves are remaining !");
		}
	}
}
