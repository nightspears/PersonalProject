<%-- 
    Document   : profile
    Created on : Mar 12, 2023, 10:22:03 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${sessionScope.acc.getUserName()}</title>
    </head>
    <style>
        .card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
    </style>
    <body>
        <div class="card">
        <img src="img/Alexface.png" alt="" style="width:100%"/>
        user: <h1>${sessionScope.acc.getUserName()}</h1>
        <p class="title">${sessionScope.acc.getRole()}</p>
        <p class="title">Day-of-enter: ${sessionScope.acc.getDoe()}</p>
        <p>Glad to have you</p>
        <a href="home"><button>Go back</button></a>
        <a href="changePassword"/><button>change Password</button></a>
        </div>
    </body>
</html>
