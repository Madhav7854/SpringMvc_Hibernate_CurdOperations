package com.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.test.dao.EmployeeDao;
import com.test.model.Employee;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

	EmployeeDao employeeDao;

	@Autowired
	public void setEmployeeDao(EmployeeDao employeeDao) {
		this.employeeDao = employeeDao;
	}

	public List listAllEmployee() {
		return employeeDao.listAllEmployees();
	}

	public void saveOrUpdate(Employee employee) {
		employeeDao.saveOrUpdate(employee);
		;
	}

	public Employee findEmployeeById(int id) {
		return employeeDao.findEmployeeById(id);
	}

	public void deleteEmployee(int id) {
		employeeDao.deleteEmployee(id);
	}

}
