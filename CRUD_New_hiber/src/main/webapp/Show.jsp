<%@page import="com.DAO.StudentDAO"%>
<%@page import="com.bean.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	List<Student> list= StudentDAO.getAllData();
%>

<table border="1" align="center">
	<tr> 
		<th>id</th>
		<th>Name</th>
		<th>contact</th>
		<th>Email</th>
		<th>City</th>
		<th>Password</th>
		<th>Delete</th>
		<th>Update</th>
	</tr>

	<% for(Student s : list)  {%>
	
		<tr>
			<td><%= s.getId() %></td> 
			<td><%= s.getName() %></td>
			<td><%= s.getContact() %></td>
			<td><%= s.getEmail() %></td>
			<td><%= s.getCity() %></td>
			<td><%= s.getPassword() %></td>
			<td><form action="AcController" method="post">
					<input type="hidden" name="id" value="<%=s.getId()%>"> 
					<input type="submit" name="action" value="Update">
				</form></td>
			<td><form action="AcController" method="post">
					<input type="hidden" name="id" value="<%=s.getId()%>"> 
					<input type="submit" name="action" value="Delete">
				</form>
			</td>
		</tr>
	
	<% } %>
</table>

	<a href="index.jsp">Index Page  </a>

</body>
</html>