<%@page import="com.DAO.StudentDAO"%>
<%@page import="com.bean.Student"%>
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
	int id= Integer.parseInt(request.getParameter("id"));
	Student stu=   StudentDAO.getdataByid(id);
	request.setAttribute("s",stu );	

%>


<form action="AcController" method="post">
		<h1 align="center">Update student data</h1>
		<table border="1" align="center">
			<tr>
				<td>ID</td>
				<td><input type="text" name="Sname" value ="<%= stu.getId() %>"></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type="text" name="Sname" value ="<%= stu.getName() %>"></td>
			</tr>
			<tr>
				<td>contact</td>
				<td><input type="text" name="Scontact" value ="<%= stu.getName() %>"  ></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="Semail" value ="<%= stu.getEmail() %>"  ></td>
			</tr>
			<tr>		
				<td>City</td>	
				<td>
					<select name="Scity" value ="<%= stu.getCity() %>"  >
						<option>baroda</option>
						<option>surat</option>
						<option>ahemdabad</option>
						<option>bharuch</option>
						<option>bhavnagar</option>
						
					</select>
				</td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="Spassword" value ="<%= stu.getPassword() %>" ></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center" ><input type="submit" name="action" value ="edit"></td>
			</tr>
		</table>
	</form>
	<a href="Show.jsp">View all student Data</a>

</body>
</html>