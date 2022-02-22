package com.test.dao;

import java.util.List;

import com.test.model.Employee;

public interface EmployeeDao {
	
	public List listAllEmployees();

	public void saveOrUpdate(Employee employee);

	public Employee findEmployeeById(int id);

	public void deleteEmployee(int id);
}
