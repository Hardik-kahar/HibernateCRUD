<html>
<body>
<h2 align="center" > New Project</h2>
<form action="AcController" method="post">
		<h1 align="center">ADD Student form</h1>
		<table border="1" align="center">
			<tr>
				<td>Name</td>
				<td><input type="text" name="Sname"></td>
			</tr>
			<tr>
				<td>contact</td>
				<td><input type="text" name="Scontact"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="Semail"></td>
			</tr>
			<tr>		
				<td>City</td>	
				<td>
					<select name="Scity">
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
				<td><input type="password" name="Spassword"></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center" ><input type="submit" name="action" value ="Register" ></td>
			</tr>
		</table>
	</form>
	<a href="Show.jsp">View all student Data</a>
</body>
</html>
