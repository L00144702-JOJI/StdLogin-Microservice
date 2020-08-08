<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
form
{
	background-color: skyblue;
    width: 250px;
	height: 200 px;
	border-style: solid;
	border-color: blue;
	padding: 10px;
}
</style>

<div>
	<form action="/stdlogin" method="post">
		<div></div>
		<div>Student Id : <input type="text" name="stdname" value=""></div>
		<div><br></div>
		<div>Password : <input type="text" name="stdpassword" value=""></div>
		<div><br></div>
		<c:if test="${not empty error}">
			<div><h5>${error}</h5></div>
			<div><br></div>
		</c:if>
		
		<c:if test="${not empty successfullyRegistered}">
			<div style="color: green;"><h5>${successfullyRegistered}</h5></div>
			<div><br></div>
		</c:if>
		
		<c:if test="${not empty registrationError}">
			<div style="color: yellow;"><h5>${registrationError}</h5></div>
			<div><br></div>
		</c:if>
		<div><input type="submit" value="Login"></div>
		<div><br></div>
		<div><input type="button" value="Register" onclick="goToRegister()"></div>
	</form>
</div>

<script type="text/javascript">
	function goToRegister(){
		alert("going to student register page");
		window.location.href="/stdregister";
	}
</script>




