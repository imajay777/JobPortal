

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Empregistration
 */
@WebServlet("/Empregistration")
public class Empregistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Empregistration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
	        String cwebsite=request.getParameter("cwebsite");
	        String cemail=request.getParameter("cemail");
	        String cclocation=request.getParameter("cclocation");
	        String caddress=request.getParameter("caddress");
	        String cmobile=request.getParameter("cmobile");
	        String cname=request.getParameter("cname");
	        String cpassword=request.getParameter("cpassword");
	        String ccpassword=request.getParameter("ccpassword");
	 
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://aazu850s4v99l7.cioeoist1dew.us-east-2.rds.amazonaws.com:3306/Projects", "root", "system123");
	
	        	Statement st = con.createStatement();
	        	String sql = "select * from emp_reg where cname='" + cname + "'";
	        	ResultSet rs = st.executeQuery(sql);
	        	
	        	if(rs.next()){
	        		response.sendRedirect("errorreg.jsp");
	        	}
	        	
	        	PreparedStatement ps = con.prepareStatement("insert into emp_reg values(?,?,?,?,?,?,?,?)");
	            
	            ps.setString(1, cwebsite);
	            ps.setString(2, cemail);
	            ps.setString(3, cclocation);
	            ps.setString(4, caddress);
	            ps.setString(5, cmobile);
	            ps.setString(6, cname);
	            ps.setString(7, cpassword);
	            ps.setString(8, ccpassword);
	            
	            int i = ps.executeUpdate();
	            if (i > 0){
	            	
	            	response.sendRedirect("successreg.jsp");
	            }
	 
	        } catch (Exception e) {
	            System.out.println(e);
	        } 
		}
}
	