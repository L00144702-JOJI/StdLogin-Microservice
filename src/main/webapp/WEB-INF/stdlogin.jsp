<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<title>Student Login </title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="./student.css">
<style>
.navclass{
	background-color:#343a40;
	margin-bottom:20px;
}
footer{
	background-color:#343a40;
	padding: 2%;
	color: #fff;
	font-size:17px;
	text-align:center;
	margin-top: 50px;
	  bottom: 0;
  left: 0;
  position: fixed;
  text-align: center;
  width: 100%;
  z-index: -1;
}
.nav-link{
	color:#fff;
	font-size: 14pt;
	font-weight:600;
}
form
{
	background-color: #17a2b8;
    
	min-height:275px;
	border: 2px solid #343a40;
	padding: 4%;
}
.login-btn{

	background-color:#343a40;
	color:#fff;
	font-size:17px;
	width:150px;
	padding:10px;
	float:right;

}
.login-btn:hover{

	background-color:#fff;
	color:#343a40;
	font-size:17px;
	width:40%;
	padding:3%;

}
body{

	background-color: #ccc;

}
</style>
<div class="navclass">
<ul class="nav justify-content-center">
  <li class="nav-item">
    <a class="nav-link active" href="#">Login</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="/stdregister">Register</a>
  </li>
  
</ul>
</div>
<div class="container">
<div class ="col-md-12"><h1 class="text-center">Student Login Page</h1></div>
<div class="row justify-content-md-center">
<div class="col-6 ">
 <div class="form-group">
	<form action="/stdlogin" method="post">
		<div></div>
		<div> <label><b>Student Id : </b></label> <input type="text" class="form-control" name="stdname" value=""></div>
		<div><br></div>
		<div><label><b>Password : </b></label><input type="text" class="form-control" name="stdpassword" value=""></div>
		<div><br></div>
		<c:if test="${not empty error}">
			<div><h5>${error}</h5></div>
			<div><br></div>
		</c:if>
		
		<c:if test="${not empty successfullyRegistered}">
			<div style="color: green;"><p>${successfullyRegistered}</p></div>
			<div><br></div>
		</c:if>
		
		<c:if test="${not empty registrationError}">
			<div style="color: yellow;"><p>${registrationError}</p></div>
			<div><br></div>
		</c:if>
		<div><input type="submit" class="btn login-btn" value="Login"></div>
		<div><br></div>
	<!-- 	<div><input type="button" value="Register" onclick="goToRegister()"></div>  -->
	</form>
</div>
</div>
</div>
</div>
<footer>
copyright @ LYIT (L00144702 - Joji)
</footer>
<script type="text/javascript">
	function goToRegister(){
		alert("going to student register page");
		window.location.href="/stdregister";
	}
</script>




