<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="mb.css"/>
<title>SHOW FACULTY.COM</title>
</head>
<body>
<jsp:include page="sucnav.jsp"></jsp:include>
<div class="ma">
<h1>EMPLOYEE DETAILS</h1>
</div>
<div class="table">
<form method="post" action="updateemp.jsp">
<table>
<tr>

<th>Employee Id </th>

<th>Employee Name </th>


<th>Employee Department </th>


<th>Employee Mail</th>


<th>Employee Phone </th>
<th>Update </th>


</tr>

<%
String id=request.getParameter("id");
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","skill","mahesh");
String sql="select * from addfac where id=?";
PreparedStatement pst=conn.prepareStatement(sql);
pst.setString(1, id);
ResultSet rs = pst.executeQuery();
while(rs.next())
{%>
	<tr>
	<td><input type="text" name="id" value= "<%=rs.getString(1) %>"/></td>
	<td><input type="text" name="name" value="<%=rs.getString(2) %>"/></td>
	<td><input type="text" name="dept" value="<%=rs.getString(3) %>"/></td>
	<td><input type="text" name="mail" value="<%=rs.getString(4) %>"/></td>
	<td><input type="text" name="phn" value="<%=rs.getString(5) %>"/></td>
	<td><input type="submit" value="update"/></td>
	</tr>
<%  }
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
</form>
</div>
<jsp:include page="sucfooter.jsp"></jsp:include>
</body>
</html>