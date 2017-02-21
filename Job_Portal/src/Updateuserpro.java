

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Updateuserpro
 */
@WebServlet("/Updateuserpro")
public class Updateuserpro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updateuserpro() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			HttpSession hs = request.getSession();
			Object obj=hs.getAttribute("email");
			String email=(String)obj;
	        String dob=request.getParameter("dob");
	        String nation=request.getParameter("nation");
	        String religion=request.getParameter("religion");
	        String clocation=request.getParameter("clocation");
	        String address=request.getParameter("address");
	        String mobile=request.getParameter("mobile");
	        String ugraduation=request.getParameter("ugraduation");
	        String pgraduation=request.getParameter("pgraduation");
	        String phd=request.getParameter("phd");
	        String diploma1=request.getParameter("diploma1");
	        String diploma2=request.getParameter("diploma2");
	        String diploma3=request.getParameter("diploma3");
	        String experience=request.getParameter("experience");
	        String cindustry=request.getParameter("cindustry");
	        String funarea=request.getParameter("funarea");
	        String kskill=request.getParameter("kskill");
	        	 
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://aazu850s4v99l7.cioeoist1dew.us-east-2.rds.amazonaws.com:3306/Projects", "root", "system123");
	
	        	Statement st = con.createStatement();
	    		ResultSet rs = st.executeQuery("select * from user_details where email='" + email + "'");	      
	    		
	    		if (rs.next()) {
	    			
	    			Statement st1 = con.createStatement();
	    			int i = st1.executeUpdate("update user_details set dob='"+dob+"',nation='"+nation+"',religion='"+religion+"',clocation='"+clocation+"',address='"+address+"',mobile='"+mobile+"',ugraduation='"+ugraduation+"',pgraduation='"+pgraduation+"',phd='"+phd+"',diploma1='"+diploma1+"',diploma2='"+diploma2+"',diploma3='"+diploma3+"',experience='"+experience+"',cindustry='"+cindustry+"',funarea='"+funarea+"',kskill='"+kskill+"' where email='"+email+"'");	    			
	    			if (i > 0){
	                	
	                	response.sendRedirect("viewprofile.jsp");
	                }
	    		}
	 
	        } catch (Exception e) {
	            System.out.println(e);
	        } 
		}

	}	