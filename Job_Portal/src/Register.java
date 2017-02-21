
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
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
  
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		        
	try
	{
        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        String gender=request.getParameter("gender");
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        String cpassword=request.getParameter("cpassword");
        String question=request.getParameter("question");
        String answer=request.getParameter("answer");
 
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con = DriverManager.getConnection("jdbc:mysql://aazu850s4v99l7.cioeoist1dew.us-east-2.rds.amazonaws.com:3306/Projects", "root", "system123");
	
        	Statement st = con.createStatement();
        	String sql = "select * from user_reg where email='" + email + "'";
        	ResultSet rs = st.executeQuery(sql);
        	
        	if(rs.next()){
        		response.sendRedirect("errorreg.jsp");
        	}
        	
        	PreparedStatement ps = con.prepareStatement("insert into user_reg values(?,?,?,?,?,?,?,?)");
            
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, gender);
            ps.setString(4, email);
            ps.setString(5, password);
            ps.setString(6, cpassword);
            ps.setString(7, question);
            ps.setString(8, answer);
            
            int i = ps.executeUpdate();
            if (i > 0){
            	
            	response.sendRedirect("successreg.jsp");
            }
 
        } catch (Exception e) {
            System.out.println(e);
        } 
	}

}
