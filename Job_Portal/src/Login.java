
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
 * Servlet implementation class Login
 */
@WebServlet("/Loginctrl")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try
		{
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://aazu850s4v99l7.cioeoist1dew.us-east-2.rds.amazonaws.com:3306/Projects", "root", "system123");

			Statement st = con.createStatement();
			String sql = "select * from user_reg where email='" +email+ "'and password='" +password+ "'";
			ResultSet rs = st.executeQuery(sql);
			
			if(rs.next())
			{
				String firstname = rs.getString("firstname");
				String lastname = rs.getString("lastname");
				String gender = rs.getString("gender");
				HttpSession hs = request.getSession();
				
				hs.setAttribute("firstname", firstname);
				hs.setAttribute("lastname", lastname);
				hs.setAttribute("gender", gender);
				hs.setAttribute("email", email);
				
				response.sendRedirect("userhome.jsp");
			}else
			{
				response.sendRedirect("errorlogin.jsp");
			}
		}catch(Exception e)
		{
			e.printStackTrace();
			response.sendRedirect("sessionexpire.jsp");
		}
	}
}
