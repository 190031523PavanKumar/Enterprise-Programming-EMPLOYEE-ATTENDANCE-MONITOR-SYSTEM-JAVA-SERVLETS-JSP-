package webapp;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class attservlet
 */
@WebServlet("/attservlet")
public class attservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public attservlet() {
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
		Enumeration en=request.getParameterNames();
		String d=request.getParameter("date");
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","skill","mahesh");
			String sql="insert into attendance values(?,?,?)";
			PreparedStatement pst=conn.prepareStatement(sql);
			while(en.hasMoreElements())
			{
				Object objOri=en.nextElement();
				String param=(String)objOri;
				String value=request.getParameter(param);
				PreparedStatement o=conn.prepareStatement(sql);
				o.setString(1,param);
				o.setString(2,d);
				o.setString(3,value);
				int count=o.executeUpdate();
				if(count>0)
				{
					conn.setAutoCommit(true);
					out.println("<script> ");
					out.println("alert(\"FACULTY ATTENDANCE UPDATED SUCCESSFULLY\"); ");
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
			
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
