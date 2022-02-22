package com.test.service;

import java.util.List;

import com.test.model.Employee;

public interface EmployeeService {
	
	public List listAllEmployee();
	 
	 public void saveOrUpdate(Employee employee);
	 
	 public Employee findEmployeeById(int id);
	 
	 public void deleteEmployee(int id);

}
