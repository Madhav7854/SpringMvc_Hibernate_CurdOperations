package com.test.dao;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.test.model.Employee;


@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	private SessionFactory sessionFactory;

	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	public List listAllEmployees() {
		Criteria criteria = getSession().createCriteria(Employee.class);
		return (List) criteria.list();
	}

	public void saveOrUpdate(Employee employee) {
		getSession().saveOrUpdate(employee);
	}

	public Employee findEmployeeById(int id) {
		Employee employee = (Employee) getSession().get(Employee.class, id);
		return employee;
	}

	public void deleteEmployee(int id) {
		Employee employee = (Employee) getSession().get(Employee.class, id);
		getSession().delete(employee);
	}

}
