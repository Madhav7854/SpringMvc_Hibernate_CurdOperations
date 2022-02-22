<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<spring:url value="/employee/add" var="addURL" />
	<a href="${addURL }">Add new Employee</a>

	<table width="100%" border="1">
		<tr>
			<td>ID</td>
			<td>Name</td>
			<td>Gender</td>
			<td>Address</td>
			<td colspan="2">Action</td>
		</tr>
		<c:forEach items="${list }" var="employee">
			<tr>
				<td>${employee.id }</td>
				<td>${employee.name }</td>
				<td>${employee.gender }</td>
				<td>${employee.address }</td>
				<td><spring:url value="/employee/update/${employee.id }"
						var="updateURL" /> <a href="${updateURL }">Update</a></td>
				<td><spring:url value="/employee/delete/${employee.id }"
						var="deleteURL" /> <a href="${deleteURL }">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>