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
<form method="post" action="regservlet" onsubmit="return validation()" >
<div class="reg-box">
<div class="head">
<h1>Register</h1>
</div>
<div class="text-box">
Admin Id<input type="text" id="adminid" name="adminid" placeholder="AdminId" value=""  >
<span id="iderror"></span>
</div>
<div class="text-box">
Name<input type="text" name="adminname" id="adminname" placeholder="AdminName" value="">
<span id="nameerror"></span>
</div>
<div class="text-box">
Email<input type="email" name="adminmail" id="adminmail" placeholder="AdminEmail" value=""  >
<span id="mailerror"></span>
</div>
<div class="text-box">
Password<input type="password" name="adminpwd" id="adminpwd" placeholder="Password" value="" >
<span id="pwderror"></span>
</div>
<div class="text-box">
Confirm Password<input type="password" name="admincpwd" id="admincpwd" placeholder="CPassword" value=""  >
<span id="cpwderror"></span>
</div>
<div class="text-box">
Phone<input type="number" name="adminphn"  id="adminphn" placeholder="Phone" value=""  >
<span id="phnerror"></span>
</div>
<div  class="check">
<input type="submit" value="register" >


</div>

</div>



</form>
<jsp:include page="footer.jsp"></jsp:include>

<script>     
    function validation() 
    
        {     
    const id=document.getElementById("adminid").value;   
      const name=document.getElementById("adminname").value;   
     const email =document.getElementById("adminmail").value;  
       const idx = /^[1][9][0][0][\d]{5}$/  ;  
      const namex=/^[a-z A-Z]+$/ ;
      const emailx= /^([a-z A-Z 0-9\.-_]+)@([a-z]+).([a-z]{2,3})$/; 
        const password=document.getElementById("adminpwd").value;   
      const pwdx = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/; 
        const cpwd=document.getElementById("admincpwd").value;   
      const phn=document.getElementById("adminphn").value;  
       const phnx=/^[6-9]\d{9}$/; 
         
        if(id=="") 
    
        {    
         document.getElementById("iderror").innerHTML="id cannot be blank";  
                
        return false; 
        }      
        if(id.length <9 ||id.length>9) 
    
        {        
     document.getElementById("iderror").innerHTML="id must be 9 digits"; 
              
          return false; 
        }         
     if(idx.test(id)) 
       { 
         
       }       
     else 
    {     
    document.getElementById("iderror").innerHTML="id must begin with 1900*****"; 
                
         return false; 
       }  
           if(name=="") 
    
        {    
         document.getElementById("nameerror").innerHTML="name cannot be blank";   
             
         return false; 
        }     
         if(namex.test(name)) 
    
        { 
                 }  
       else
     {         document.getElementById("nameerror").innerHTML="name must be alphabets"; 
    
                
         return false; 
        }   
      if(name.length<5|| name.length>20) 
        {     
        document.getElementById("nameerror").innerHTML="name must be 2-20 characters";  
               
       return false; 
        }   
      if(email=="") 
        {       
      document.getElementById("mailerror").innerHTML="email cannot be blank";  
             
          return false; 
                 }  
    
       if(emailx.test(email)) 
        { 
                 }  
       else
    {        
     document.getElementById("mailerror").innerHTML="not a valid email";    
           
         return false; 
        }    
     
     if(phnx.test(phn)) 
        { 
                 }  
       else{       
      document.getElementById("phnerror").innerHTML="not a valid number";   
           
          return false;
             
        } 
         
         
    } 
     
    </script> 


</body>
</html>