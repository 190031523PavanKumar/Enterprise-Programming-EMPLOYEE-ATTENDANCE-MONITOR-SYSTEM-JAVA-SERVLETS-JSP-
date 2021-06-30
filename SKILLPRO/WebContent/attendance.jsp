<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="pra.css"/>
<title>SHOW FACULTY.COM</title>
</head>
<body>
<jsp:include page="sucnav.jsp"></jsp:include>
<div class="ma">
<h1>ATTENDANCE </h1>
</div>
<form method="post" action="attservlet">
<div class="table">
<input type="date" id="date" name="date"/> 
<table>

<tr>

<th>Employee Id </th>

<th>Employee Name </th>


<th>Employee Department </th>


<th>Employee Mail</th>


<th>Employee Phone </th>
<th>present </th>
<th>absent </th>

</tr>

<%
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","skill","mahesh");
String sql="select * from addfac";
PreparedStatement pst=conn.prepareStatement(sql);
ResultSet rs = pst.executeQuery();
while(rs.next())
{%>

	<tr>
	
	<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><input type="radio" name="<%= rs.getInt(1) %>" value="present" /></td>
	<td><input type="radio" name="<%= rs.getInt(1) %>" value="absent"/></td>
	</tr>
	
	<%
	conn.setAutoCommit(true);
	%>
	
<% }%>

<% }

catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>




</table>
<div class="sub">
<input type="submit"  value="submit"/>
</div>
</div>
</form>

</body>
</html>