<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 
<meta charset="ISO-8859-1">
<title>Login.com</title>
<link rel="stylesheet" type="text/css" href="navstyles.css"/>
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&display=swap" rel="stylesheet">
</head>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
<form method="post" action="loginservlet">
<div class="reg-box1">
<div class="head">
<h1>Login</h1>
</div>
<div class="text-box">
Admin Id<input type="text" name="adminid" placeholder="AdminId" value="" >
<small>error message</small>
</div>

<div class="text-box">
Password<input type="password" name="adminpwd" placeholder="Password" value="" >
<small>error message</small>
</div>

<div  class="check">
<input type="submit" value="Login" >

</div>

</div>
</form>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>