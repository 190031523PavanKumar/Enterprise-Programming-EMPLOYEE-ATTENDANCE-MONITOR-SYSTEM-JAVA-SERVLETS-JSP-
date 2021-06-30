<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
		String id=request.getParameter("id");
	
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","skill","mahesh");
			String sql="delete from addfac where id = ?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1,id);
			
		
			int count=pst.executeUpdate();
			if(count>0)
			{
				conn.setAutoCommit(true);
				out.println("<script> ");
				out.println("alert(\"FACULTY DETAILS DELETED SUCCESSFULLY\"); ");
				out.println("window.location.href=\"showfac.jsp\";");
				out.println("</script> ");
			 }
			else {
				conn.setAutoCommit(true);
				out.println("<script> ");
				out.println("alert(\"FACULTY DETAILS FAILED TO DELETE\"); ");
				out.println("window.location.href=\"showfac.jsp\";");
				out.println("</script> ");
			}
					
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		%>
</body>
</html>