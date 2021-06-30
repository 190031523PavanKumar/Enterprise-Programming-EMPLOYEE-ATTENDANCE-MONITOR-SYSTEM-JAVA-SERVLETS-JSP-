<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home.com</title>
 <link rel="stylesheet" type="text/css" href="navstyles.css"/>
 
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&display=swap" rel="stylesheet">
</head>
<body>
<jsp:include page="navigation.jsp"></jsp:include>
<div class="main-content">

<h1>WELCOME TO KL UNIVERSITY</h1>
<a href="https://www.kluniversity.in/">VIJAYWADA</a>
<a href="https://www.kluniversity.in/">HYDERABAD</a>

</div>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript"> 
        window.history.forward(); 
        function noBack() { 
            window.history.forward(); 
        } 
    </script> 

</body>
</html>