<%-- 
    Document   : signup
    Created on : Mar 12, 2023, 4:37:46 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><%-- 
    Document   : login
    Created on : Mar 12, 2023, 10:30:58 AM
    Author     : ADMIN
--%>

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
</style>
</head>
<body style="background-image:url(img/Sitting in the sun.png)">

<h2>Signup Form</h2>
<form action="signup" method="post">
  <div class="imgcontainer">
    <img src="img/icon.jpg"  alt="Avatar" class="avatar">
  </div>

  <div class="container">
      <div style="color: red"> ${requestScope.existed} </div>
    Username:
    <input type="text" placeholder="Enter Username" name="uname" required>
    Password:
    <input type="password" placeholder="Enter Password" name="psw" required>
    Confirm passWord:
    <input type="password" placeholder="Re_Enter Password" name="psw2" required>
    <button type="submit">Signup</button>
    <a style="text-decoration: none;" href="home" class="cancelbtn">cancel</a>
  </div>
</form>

</body>
</html>


