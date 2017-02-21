<%
	session.invalidate();
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JOB Portal</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
</head>
<body>
<% request.getSession().invalidate(); %>
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
			<li><a href="#">About Us</a></li>
			<li class="last"><a href="#">Help</a></li>
		</ul>
	</div>	
	<div id="content">
	<div class="search">
	<h1 style="text-align:center;color:gray">You are successfully Logout.<br> 
	Click Here <a href="login.jsp">Login</a> again.</h1>
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