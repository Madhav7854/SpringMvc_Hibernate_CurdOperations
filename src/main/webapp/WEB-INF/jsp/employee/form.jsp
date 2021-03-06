<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Form</title>
</head>
<body>
 <spring:url value="/employee/save" var="saveURL" />
 
 <form:form action="${saveURL }" method="POST" modelAttribute="employeeForm">
  <form:hidden path="id"/>
  <table>
   <tr>
    <td>Emp Name</td>
    <td><form:input path="name"/></td>
   </tr>
   
   <tr>
    <td>Gender: </td>
    <td>
     <form:radiobutton path="gender" value="Male" /> Male
     <form:radiobutton path="gender" value="Female" /> Female
    </td>
   </tr> 
   <tr>
    <td>Address</td>
    <td><form:textarea path="address" rows="3" /></td>
   </tr>
   <tr>
    <td></td>
    <td><button type="submit">Save</button></td>
   </tr>
  </table>
 </form:form>
</body>
</html>