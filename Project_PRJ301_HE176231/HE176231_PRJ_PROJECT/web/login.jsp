<%-- 
    Document   : login
    Created on : Mar 12, 2023, 10:30:58 AM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
    width: 100px;
    height: auto;
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
}
a{
  list-style: none;  
}
.a{
    
}
</style>
</head>
<body style="background-image:url(img/Sitting in the sun.png)">
    
<h2>Login Form</h2>
<form action="login" method="post">
  <div class="imgcontainer">
    <img src="img/icon.jpg"  alt="Avatar" class="avatar">
  </div>
  <c:set var="cookie" value="${pageContext.request.cookies}"></c:set>
  <div class="container">
      <div style="color: red"> ${requestScope.error} </div>
    Username
    <input type="text" placeholder="Enter Username" name="uname" value="${cookie.cuser.value}" required>
    Password
    <input type="password" placeholder="Enter Password" name="psw" required>
    <input type="checkbox"
           ${(cookies.crem!=null?'check':'')}
           name="rem" value="ON">remember me
    <button type="submit">Login</button>
    <a style="text-decoration: none;" href="home" class="cancelbtn">cancel</a>
  </div>
</form>

</body>
</html>

