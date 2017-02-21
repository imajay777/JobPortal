<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
	String s1 = request.getParameter("email");
	String s2 = request.getParameter("newpassword");
	String s3 = request.getParameter("cnewpassword");
	
	Connection con = null;
	String email = "";
	

	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://aazu850s4v99l7.cioeoist1dew.us-east-2.rds.amazonaws.com:3306/Projects", "root", "system123");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from user_reg where email='" + s1 + "'");

		if (rs.next()) {
			email = rs.getString(4);
		}
		if(s2.equals(s3))
		{
		if (s1.equals(email)) {
			Statement st1 = con.createStatement();
			int i = st1.executeUpdate("update user_reg set password='" + s2 + "', cpassword='" + s3 + "' where email='" + email + "'");
			%>
			<jsp:forward page="successchangepass.jsp" />
			<%
			st1.close();
			con.close();
		} else {
			%>
			<jsp:forward page="errorchangepass.jsp" />
			<%
		}
		}
	} catch (Exception e) {
		out.println(e);
	}
%>