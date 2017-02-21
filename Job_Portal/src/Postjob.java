

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
 * Servlet implementation class Postjob
 */
@WebServlet("/Postjob")
public class Postjob extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Postjob() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			HttpSession hs = request.getSession();
			Object obj=hs.getAttribute("cname");
			String cname=(String)obj;		
			Object obj1=hs.getAttribute("cwebsite");
			String cwebsite=(String)obj1;
			String jtitle=request.getParameter("jtitle");
	        String jdesc=request.getParameter("jdesc");
	        String workexp=request.getParameter("workexp");
	        String salary=request.getParameter("salary");
	        String vacancie=request.getParameter("vacancie");
	        String jlocation=request.getParameter("jlocation");
	        String industry=request.getParameter("industry");
	        String funarea=request.getParameter("funarea");
	        String ugraduation=request.getParameter("ugraduation");
	        String pgraduation=request.getParameter("pgraduation");
	        String phd=request.getParameter("phd");
	        String aboutcom=request.getParameter("aboutcom");
	        String cperson=request.getParameter("cperson");
	        String cmobile=request.getParameter("cmobile");
	        
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection("jdbc:mysql://aazu850s4v99l7.cioeoist1dew.us-east-2.rds.amazonaws.com:3306/Projects", "root", "system123");

           	PreparedStatement ps = con.prepareStatement("insert into post_job values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
           	
           	ps.setString(1, cname);
            ps.setString(2, cwebsite);
            ps.setString(3, jtitle);
            ps.setString(4, jdesc);
            ps.setString(5, workexp);
            ps.setString(6, salary);
            ps.setString(7, vacancie);
            ps.setString(8, jlocation);
            ps.setString(9, industry);
            ps.setString(10, funarea);
            ps.setString(11, ugraduation);
            ps.setString(12, pgraduation);
            ps.setString(13, phd);
            ps.setString(14, aboutcom);
            ps.setString(15, cperson);
            ps.setString(16, cmobile);
            
            int i = ps.executeUpdate();
            if (i > 0){
            	
            	response.sendRedirect("successpj.jsp");
            }
 
        } catch (Exception e) {
            System.out.println(e);
        } 
	}

}	