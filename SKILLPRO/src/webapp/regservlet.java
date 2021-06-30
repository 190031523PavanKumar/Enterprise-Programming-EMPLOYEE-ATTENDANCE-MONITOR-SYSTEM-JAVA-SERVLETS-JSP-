package webapp;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class regservlet
 */
@WebServlet("/regservlet")
public class regservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public regservlet() {
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
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		String id=request.getParameter("adminid");
		String name=request.getParameter("adminname");
		String mail=request.getParameter("adminmail");
		String pwd=request.getParameter("adminpwd");
		String cpwd=request.getParameter("admincpwd");
		String phn=request.getParameter("adminid");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","skill","mahesh");
			String sql="insert into register values(?,?,?,?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, id);
			pst.setString(2, name);
			pst.setString(3, mail);
			pst.setString(4, pwd);
			pst.setString(5, cpwd);
			pst.setString(6, phn);
			
			int count=pst.executeUpdate();
			if(count>0)
			{
				out.println("<script> ");
				out.println("alert(\"REGISTRATION SUCCESSFUL\"); ");
				out.println("window.location.href=\"login.jsp\";");
				out.println("</script> ");
				
				
			}
			else
			{
				RequestDispatcher rd=request.getRequestDispatcher("fail.jsp");
				rd.forward(request, response);
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
