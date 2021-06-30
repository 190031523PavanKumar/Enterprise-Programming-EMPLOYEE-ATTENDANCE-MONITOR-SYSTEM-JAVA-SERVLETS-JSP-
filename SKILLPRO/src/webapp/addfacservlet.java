package webapp;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addfacservlet
 */
@WebServlet("/addfacservlet")
public class addfacservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addfacservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String dept=request.getParameter("dept");
		String mail=request.getParameter("mail");
		String phn=request.getParameter("phn");
		
	
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","skill","mahesh");
			String sql="insert into addfac values(?,?,?,?,?)";
			PreparedStatement pst =conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setString(2, name);
			pst.setString(3, dept);
			pst.setString(4, mail);
			pst.setString(5, phn);
			int count=pst.executeUpdate();
			if(count>0)
			{
				out.println("<script> ");
				out.println("alert(\"FACULTY ADDED SUCCESSFULLY\"); ");
				out.println("window.location.href=\"addfac.jsp\";");
				out.println("</script> ");
				
			}
			else {
				out.print("<script> ");
				out.print("alert(\"FACULTY FAILED TO ADD\") ");
				out.print("</script> ");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
