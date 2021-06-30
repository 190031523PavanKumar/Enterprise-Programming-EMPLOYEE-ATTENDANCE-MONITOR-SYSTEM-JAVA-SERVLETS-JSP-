<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Attendance.com</title>
<link rel="stylesheet" type="text/css" href="mb.css"/>
</head>
<body>
<jsp:include page="sucnav.jsp"></jsp:include>
<div class="ma">
<h1>ATTENDANCE DETAILS</h1>
</div>
<div class="table">
<table>
<tr>

<th>Employee Id </th>

<th>Date</th>


<th>Status</th>


</tr>

<%
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","skill","mahesh");
String sql="select * from attendance";
PreparedStatement pst=conn.prepareStatement(sql);
ResultSet rs = pst.executeQuery();
while(rs.next())
{%>
	<tr>
	<td><%=rs.getString(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	</tr>
	<%
	conn.setAutoCommit(true);
	%>
<% }
}

catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>




</table>
</div>


<jsp:include page="sucfooter.jsp"></jsp:include>
</body>
</html>