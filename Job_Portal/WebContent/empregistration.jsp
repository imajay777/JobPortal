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
			<%=new java.util.Date()%>
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
			<li class="last"><a href="aboutus.jsp">About Us</a></li>
		</ul>
	</div>	
	<div id="content">
		<div class="search">
		<div id="container">
				<div id="wrapper">
				<div id="bgform">
				<script type="text/javascript">
				function validateform(){
					var cwebsite=document.cregform.cwebsite.value;
					if(cwebsite==null || cwebsite==""){
						alert("Please fill Company Website field.");  
						  return false;
					}
					var x=document.cregform.cemail.value;  
					var atposition=x.indexOf("@");  
					var dotposition=x.lastIndexOf(".");
					if (x==null || x==""){  
						  alert("Please enter E-mail.");  
						  return false;  
					}if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
						  alert("Please enter a valid E-mail address");  
						  return false;  
					}
					var cclocation=document.cregform.cclocation.value;
					if(cclocation==null || cclocation==""){
						alert("Please fill Company Location field.");  
						  return false;
					}
					var caddress=document.cregform.caddress.value;
					if(caddress==null || caddress==""){
						alert("Please fill Company Address field.");  
						  return false;
					}
					var cmobile=document.cregform.cmobile.value;
					if(cmobile==null || cmobile==""){
						alert("Please fill Contact Number field.");  
						  return false;
					}
					var cname=document.cregform.cname.value;
					if(cname==null || cname==""){
						alert("Please fill Company Name field.");  
						  return false;
					}
					var cpassword=document.cregform.cpassword.value;
					var ccpassword=document.cregform.ccpassword.value;
					if(cpassword.length<5){  
						  alert("Password must be at least 5 characters long.");  
						  return false;  
					}if(cpassword==ccpassword){
					}else{
						alert("Password must be same!");
						return false;
					}
					return true;
				}
				</script>  
			<form name="cregform" action="Empregistration" method="post" onsubmit="return validateform()">
				<center>
				<h1><strong>New Employer Registration Form</strong></h1>
				<table>
				<tr>
				<td><b><u>Company Details :</u></b></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Company Website</td>
				<td> : <input type="text" name="cwebsite" /> </td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Company E-mail</td>
				<td> : <input type="text" name="cemail" /> </td></tr>
				<tr><td><br></td></tr>
				<tr>
				<td><b><u>Contact Details :</u></b></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Current Location</td>
				<td> : <input type="text" name="cclocation" /> </td></tr>				
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Address</td>
				<td> : <textarea rows="3" cols="20" name="caddress" ></textarea> </td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Contact Number</td>
				<td> : <input type="text" name="cmobile" /> </td></tr>				
				<tr><td><br></td></tr>
				<tr>
				<td><b><u>Login Details :</u></b></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr>
				<td>Company Name</td>
				<td> : <input type="text" name="cname" /> </td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr><td>Password </td>
				<td> : <input type="password" name="cpassword" /></td></tr>
				<tr><td></td></tr><tr><td></td></tr>
				<tr><td>Re-Enter Password</td>
				<td>: <input type="password" name="ccpassword" /></td></tr>
				<tr><td><br></td></tr>
				</table>
				<br>
				<input type="submit" value=" Register "/>&nbsp;&nbsp;&nbsp;
				<input type="reset" value=" Reset "/><br><br>
				<h3><a href="emplogin.jsp" style="text-align:center;color:gray">You have an account already? Login here</a></h3>
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