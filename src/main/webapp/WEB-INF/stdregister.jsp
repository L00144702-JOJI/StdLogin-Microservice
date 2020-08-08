<h1>Hi this is register page !!!</h1>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<style>
form
{
	background-color: yellow;
    width: 250px;
	height: 300 px;
	border-style: solid;
	border-color: blue;
	padding: 10px;
}
</style>

<div>
	<form action="/set-user" method="post">
		<div></div>
		<div>Student Id : <input type="text" name="stdname" value=""></div>
		<div><br></div>
		<div>Password : <input type="text" name="stdpassword1" value=""></div>
		<div><br></div>
		<div>Conform Password : <input type="text" name="stdpassword2" value=""></div>
		<div><br></div>
		<div><input type="submit" value="Register"></div>
	</form>
</div>

<script type="text/javascript">
	function goToRegister(){
		alert("going to student register page");
		window.location.href="/stdregister";
	}
</script>