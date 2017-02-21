import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Edituserprofile
 */
@WebServlet("/Edituserprofile")
public class Edituserprofile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Edituserprofile() {
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

	        	PreparedStatement ps = con.prepareStatement("insert into user_details values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	            
	            ps.setString(1, email);
	            ps.setString(2, dob);
	            ps.setString(3, nation);
	            ps.setString(4, religion);
	            ps.setString(5, clocation);
	            ps.setString(6, address);
	            ps.setString(7, mobile);
	            ps.setString(8, ugraduation);
	            ps.setString(9, pgraduation);
	            ps.setString(10, phd);
	            ps.setString(11, diploma1);
	            ps.setString(12, diploma2);
	            ps.setString(13, diploma3);
	            ps.setString(14, experience);
	            ps.setString(15, cindustry);
	            ps.setString(16, funarea);
	            ps.setString(17, kskill);
	            
	            int i = ps.executeUpdate();
	            if (i > 0){
	            	
	            	response.sendRedirect("viewprofile.jsp");
	            }
	 
	        } catch (Exception e) {
	            System.out.println(e);
	        } 
		}

	}	