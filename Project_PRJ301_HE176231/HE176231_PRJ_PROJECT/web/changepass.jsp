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
            <a href="home"><button>Go back</button></a>

            <html>
                <head>
                    <meta name="viewport" content="width=device-width, initial-scale=1">
                    <style>
                        body {
                            font-family: Arial, Helvetica, sans-serif;
                        }
                        form {
                            border: 3px solid #f1f1f1;
                        }

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

                <h2>Change password form</h2>

                <div class="imgcontainer">
                    <img src="img/icon.jpg"  alt="Avatar" class="avatar">
                </div>
                <div class="container">
                    <div style="color:red">
                        ${sessionScope.errchangpass}
                    </div>
                        
                    <form action="changePassword" method="post">
                        <input type="hidden" name="uname" value="${sessionScope.acc.getUserName()}">
                        Old_Password:
                        <input type="password" placeholder="Enter Password" name="oldpass" required>
                        New_Password:
                        <input type="password" placeholder="Enter Password" name="newpass" required>
                        Confirm change password
                        <input type="password" placeholder="Re_Enter Password" name="newpass2" required>
                        <button type="submit">Change pass</button>
                        <a style="text-decoration: none;" href="home" class="cancelbtn">cancel</a>
                    </form>
                </div>

        </div>
    </body>
</html>
