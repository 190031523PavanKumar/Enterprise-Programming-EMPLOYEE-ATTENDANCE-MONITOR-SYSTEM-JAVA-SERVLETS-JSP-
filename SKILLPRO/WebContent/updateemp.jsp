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
<h1>UPDATE DETAILS</h1>
</div>

<form method="post" action="updateemp.jsp">

<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String dept=request.getParameter("dept");
String mail=request.getParameter("mail");
String phn=request.getParameter("phn");

try {
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","skill","mahesh");
String sql="update addfac set name=?,dept=?,mail=?,phn=? where id=?";
PreparedStatement pst=conn.prepareStatement(sql);

pst.setString(1, name);
pst.setString(2, dept);
pst.setString(3, mail);
pst.setString(4, phn);
pst.setString(5, id);
int count=pst.executeUpdate();
if(count>0)
{
	conn.setAutoCommit(true);
	out.println("<script> ");
	out.println("alert(\"FACULTY DETAILS UPDATED SUCCESSFULLY\"); ");
	out.println("window.location.href=\"showfac.jsp\";");
	out.println("</script> ");
 }
else {
	conn.setAutoCommit(true);
	out.println("<script> ");
	out.println("alert(\"FACULTY DETAILS FAILED TO UPDATE\"); ");
	out.println("window.location.href=\"showfac.jsp\";");
	out.println("</script> ");
}
}

catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>
</form>


</body>
</html>