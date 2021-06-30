<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADDFAC.COM</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Akaya+Kanadaka&display=swap" rel="stylesheet">
<script>     
    function validation() 
    
        {     
    const id=document.getElementById("id").value;   
      const name=document.getElementById("name").value;
      const dept=document.getElementById("dept").value;
     const email =document.getElementById("mail").value;  
       const idx = /^[1][0][0][0][\d]{5}$/  ;  
      const namex=/^[a-z A-Z]+$/ ;
      const emailx= /^([a-z A-Z 0-9\.-_]+)@([a-z]+).([a-z]{2,3})$/; 
      const deptx=/^[a-z A-Z]+$/ ;
        
      
      const phn=document.getElementById("phn").value;  
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
    document.getElementById("iderror").innerHTML="id must begin with 1000*****"; 
                
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
     if(password=="") 
    
        {        
     document.getElementById("pwderror").innerHTML="password cannot be blank"; 
               
         return false; 
    
                 }  
       if(pwdx.test(password)) 
        { 
                 }  
       else{         
    document.getElementById("pwderror").innerHTML="password Minimum eight characters, at least one upp ercase letter, one lowercase letter, one number and one special character";    
              
       return false; 
        }     
    if(password !=cpwd) 
        {        
     document.getElementById("cpwderror").innerHTML="password does not match";   
             
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
</head>
<body>
<jsp:include page="sucnav.jsp"></jsp:include>
<form method="post" action="addfacservlet" onsubmit="return validation()">
<div class="addfac">

<div class="heading">
<h1>ADD FACULTY</h1>
</div>
<div class="form-control">
Faculty Id<input type="text" id="id" name="id" value="" placeholder="faculty id"/> <br>
<small id="iderror"></small>
</div>
<div class="form-control">
Faculty Name<input type="text" id="name" name="name" value="" placeholder="faculty name"/> <br>
<small id="nameerror"></small>
</div>
<div class="form-control">
Department <br>
<input type="text" name="dept" id="dept" value="" placeholder="faculty department"/>
<br>
<small id="depterror"></small>
</div>

<div class="form-control">
Faculty Mail<input type="text" id="mail" name="mail" placeholder="Faculty Email" value=""/><br>
<small id="mailerror"></small>
</div>
<div class="form-control">
Faculty Phn<input type="text" id="phn" name="phn" placeholder="Faculty Phone" value=""/><br>
<small id="phnerror"></small>
</div>

<div class="btn">
<input type="submit"  value="ADD FACULTY"/><br>

</div>

</div>
</form>
<jsp:include page="sucfooter.jsp"></jsp:include>
</body>
</html>