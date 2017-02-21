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
			<li><a href="#">About Us</a></li>
			<li class="last"><a href="#">Help</a></li>
		</ul>
	</div>	
	<div id="content">
		<div class="search">
		<div id="container">
				<div id="wrapper">
				<div id="bgform">
		<script type="text/javascript">  
function validateform(){  
var firstname=document.regform.firstname.value;  
var lastname=document.regform.lastname.value;
var x=document.regform.email.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");
var radio1=document.getElementById('male').checked;
var radio2=document.getElementById('female').checked;
var password=document.regform.password.value;
var cpassword=document.regform.cpassword.value;
var question=document.regform.question.value;
var answer=document.regform.answer.value;

if (firstname==null || firstname==""){  
  alert("Please fill First Name field.");  
  return false;  
}if(lastname==null || lastname==""){  
  alert("Please fill Last Name field.");  
  return false;  
}if(radio1==false && radio2==false){
	alert("Please select either male or female.");
	return false;
}if (x==null || x==""){  
	  alert("Please enter E-mail.");  
	  return false;  
}if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
	  alert("Please enter a valid E-mail address");  
	  return false;  
}if(password.length<5){  
	  alert("Password must be at least 5 characters long.");  
	  return false;  
}if(password==cpassword){
}else{
	alert("Password must be same!");
	return false;
}if (answer==null || answer==""){  
	  alert("Please enter your Security Question and Answer.");  
	  return false;  
} 
return true;
}
</script>  
			<form name="regform" action="Registration" method="post" onsubmit="return validateform()">
				<center>
				<h1><strong>New User Registration Form</strong></h1>
				<table>
				<tr>
				<td><b><u>Personal Details :</u></b></td></tr>
				<tr>
				<td>First Name</td>
				<td> : <input type="text" name="firstname" /> </td></tr>
				<tr><td></td></tr>
				<tr>
				<td>Last Name</td>
				<td> : <input type="text" name="lastname" /> </td></tr>
				<tr><td></td></tr>
				<tr>
				<td>Gender</td>
				<td>: Male<input type="radio" id="male" name="gender" value="Male" />
					  Female<input type="radio" id="female" name="gender" value="Female" /><br></td>
				</tr>
				<tr>
				<td><b><u>Login Details :</u></b></td></tr>
				<tr>
				<td>E-mail</td>
				<td> : <input type="text" name="email" /> </td></tr>
				<tr><td></td></tr>
				<tr><td>Password </td>
				<td> : <input type="password" name="password" /></td></tr>
				<tr><td></td></tr>
				<tr><td>Re-Enter Password</td>
				<td>: <input type="password" name="cpassword" /></td></tr>
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
				<input type="submit" value=" Register "/>&nbsp;&nbsp;&nbsp;
				<input type="reset" value=" Reset "/><br><br>
				<h3><a href="login.jsp" style="text-align:center;color:gray">You have an account already? Login here</a></h3>
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