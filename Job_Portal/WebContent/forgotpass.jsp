<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>

<%
	String s1 = request.getParameter("email");
	String s2 = request.getParameter("question");
	String s3 = request.getParameter("answer");
	
	if (s1 != null && s2 != null && s3 != null) {
		String sql = "select * from user_reg where email='" +s1+ "'and question='" + s2 + "'and answer='" + s3 + "'";
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		}
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		boolean status = false;
		try {
			con = DriverManager.getConnection("jdbc:mysql://aazu850s4v99l7.cioeoist1dew.us-east-2.rds.amazonaws.com:3306/Projects", "root", "system123");
			st = con.createStatement();
			rs = st.executeQuery(sql);
			status = rs.next();
		} catch (SQLException ex) {
			ex.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
					rs = null;
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
			try {
				if (st != null) {
					st.close();
					st = null;
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
			try {
				if (con != null) {
					con.close();
					con = null;
				}
			} catch (SQLException ex) {
				ex.printStackTrace();
			}
		}

		if (status) {
			%>
			<jsp:forward page="changepass.jsp" />
			<%
	} else {
		%>
		<jsp:forward page="errorchangepass.jsp" />
		<%
		}
	} else {
		s1 = "";
	}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JOB Portal</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<div class="meta">
		<div class="metalinks">
			<a href="index.jsp"><img src="images/meta1.gif" alt="" width="15" height="14" /></a>
			<a href="#"><img src="images/meta2.gif" alt="" width="17" height="14" /></a>
			<a href="#"><img src="images/meta3.gif" alt="" width="17" height="14" /></a>
			<a href="#"><img src="images/meta4.gif" alt="" width="15" height="14" /></a>
		</div>
		<p>Recruiters: <a href="login.jsp">Log in</a> or <a href="registration.jsp">Sing up</a></p>																																															
	</div>
	<div id="header">
		<a href="index.jsp" class="logo"><img src="images/logo.jpg" alt="setalpm" width="149" height="28" /></a>
		<span class="slogan">Your Key to Success</span>
		<ul id="menu">
			<li><a href="index.jsp">Home</a></li>
			<li><a href="adminlogin.jsp">Administration</a></li>
			<li><a href="emplogin.jsp">Employer</a></li>
			<li><a href="login.jsp">Jobseeker</a></li>
			<li><a href="#">About Us</a></li>
			<li class="last"><a href="#">Help</a></li>
		</ul>
	</div>	
	<div id="content">
		<div class="search">
		<div id="container">
				<div id="wrapper">
				<div id="bgform">
		<script>  
function validateemail()  
{  
var x=document.fpform.email.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");
var answer=document.fpform.answer.value;

if (x==null || x==""){  
	  alert("Please enter E-mail.");  
	  return false;  
}if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address");  
  return false;  
}if (answer==null || answer==""){  
	  alert("Please enter your Security Question and Answer.");  
	  return false;  
}  
}  
</script>
			<form name="fpform" onsubmit="return validateemail();">
				<center>
				<h1><strong>Please identify your Email</strong></h1>
				<table>
				<tr>
				<td><b><u>Login E-mail :</u></b></td></tr>
				<tr>
				<td>E-mail</td>
				<td> : <input type="text" name="email" /></td></tr>
				<tr><td></td></tr>
				<tr>
				<td><b><u>Security Question :</u></b></td></tr>
				<tr>
				<td>Select Question</td>
				<td>:
				<select name="question" required>
				<option value="">select</option>
				<option>Your nick name?</option>
				<option>Favorite player?</option>
				<option>Your best friend?</option>
				</select>
				<tr>
				<td>Your Answer</td>
				<td> : <input type="text" name="answer" /> </td></tr>
				<tr><td></td></tr>
				</table>
				<input type="submit" value=" Submit "/>&nbsp;&nbsp;&nbsp;
				<input type="reset" value=" Reset "/><br><br>
				<h3><a href="login.jsp" style="text-align:center;color:gray">Go back to Login Page</a></h3>
				</center>
			</form>
			</div>
			</div>
			</div>
		</div>
		<div id="blocks">									
			<div class="block">
				<img src="images/title1.gif" alt="" width="214" height="29" /><br />
				<img src="images/map.jpg" alt="" width="214" height="160" /><br />
			</div>
	
			<div class="block">
				<img src="images/title2.gif" alt="" width="214" height="29" /><br />
				<p class="red_text">The Project Job Portal is an web based application for automating the process of resume preparation and applying for jobs.</p>
			    <p class="red_text">This would be facilitating the students and experienced candidates to make and print their resumes in a proper format.</p>
			    <p class="red_text">And also searching for jobs and applying for jobs is possible.</p>
			</div>
			<div class="block">
				<img src="images/title3.gif" alt="" width="214" height="29" /><br />
				<ul id="list">
					<li>............</li>
					<li>............</li>
					<li>............</li>
					<li>............</li>
					<li>............</li>
					<li>............</li>
				</ul>
			</div>
			<div class="block">
				<img src="images/title4.gif" alt="" width="214" height="29" /><br />
				<p class="gray_text">In addition, it will be facilitating the higher management to search the students depending upon their skill sets and other attributes.</p>
			    <p class="gray_text">The basic requirement is to have a centralized repository of all skill-holders in the organizations that an student with a particular skill set can immediately found in the case of urgent requirement.</p>
			</div>
		</div>
		<div id="info">
			<div>
				<img src="images/title5.gif" alt="" width="160" height="26" />
				<ul id="list">
					<li> Get connected with over 45000 recruiters. </li>
 					<li> Apply to jobs in just one click.</li>
					<li> Apply to thousands of jobs posted daily.</li>
					<li> Get relevant jobs on your mobile, and online.</li>
				</ul>
			</div>
			<div>
				<img src="images/title6.gif" alt="" width="160" height="26" />
				<ul>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>					
				</ul>
			</div>
			<div>
				<img src="images/title7.gif" alt="" width="160" height="26" />
				<ul>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
				</ul>
			</div>
			<div>
				<img src="images/title8.gif" alt="" width="160" height="26" />
				<ul id="list">
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
					<li>...............</li>
				</ul>
			</div>
		</div>
	</div>
	<div id="footer">
					  Copyright &copy;. All rights reserved. 																																																						 
	</div>
</body>
</html>