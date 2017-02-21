

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Emplogin
 */
@WebServlet("/Emplogin")
public class Emplogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Emplogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			String cname=request.getParameter("cname");
			String cpassword=request.getParameter("cpassword");
			
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://aazu850s4v99l7.cioeoist1dew.us-east-2.rds.amazonaws.com:3306/Projects", "root", "system123");

			Statement st = con.createStatement();
			String sql = "select * from emp_reg where cname='" +cname+ "'and cpassword='" +cpassword+ "'";
			ResultSet rs = st.executeQuery(sql);
			
			if(rs.next())
			{
				String cwebsite = rs.getString("cwebsite");
				String cclocation = rs.getString("cclocation");
				String cemail = rs.getString("cemail");
				HttpSession hs = request.getSession();
				
				hs.setAttribute("cwebsite", cwebsite);
				hs.setAttribute("cname", cname);
				hs.setAttribute("cclocation", cclocation);
				hs.setAttribute("cemail", cemail);
				
				response.sendRedirect("emphome.jsp");
			}else
			{
				response.sendRedirect("errorlogin.jsp");
			}
		}catch(Exception e)
		{
			System.out.println(e);
		}
	}
}