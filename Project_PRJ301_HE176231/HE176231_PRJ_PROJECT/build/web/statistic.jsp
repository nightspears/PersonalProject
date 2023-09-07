<%-- 
    Document   : home
    Created on : Mar 7, 2023, 8:08:50 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Satistic Page</title>

        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>
    <style>
        #header{
            position: fixed;
            width: 100%;
            height: auto;
        }
    </style>
    <body style="background-color: gray">
        <div id="header">

            <ul>
                <a href="home">
                    <img width="auto"height="50px" src="img/icon.jpg"/>
                </a>
                <div style="display: inline-flex;
                     color: white;
                     font-family: fantasy;
                     font-size: xx-large;">Curse forge </div>
                <c:if test="${sessionScope.acc==null}">
                    <li><a href="signup.jsp">Sign Up</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    </c:if>
                    <c:if test="${sessionScope.acc!=null}">
                    <li><a href="profile.jsp">Profile</a></li>
                    <li><a href="logout">Logout</a></li>
                    <li> <img src="img/Alexface.png" width="40px" alt=""/></li>
                        ${sessionScope.acc}
                    </c:if>

            </ul>

        </div>
        <style>
            #daude{
                padding-top: 1rem;
            }
        </style>
        <div class="hinhanh" id="daude">
            <img width="100%" height="300px" src="img/Sitting in the sun.png" alt=""/>
        </div>
        <!-- ------------------------------------------------------------------------------------------------------ -->
        <style>
            #boxing{
                margin-left: 20px;
                margin-right:20px;
                margin-top: 10px;
                margin-bottom: 10px;
                border: 2px;
                border-color: gray;
                background-color: gainsboro;
                color: white;
                display: flex;
                border-radius: 10px;
                float: top;

            }
            #boxing a:link{
                float: top;
                text-decoration: none;
                color: hotpink;

            }
        </style>


        <div>
            <style>
                table {
                    font-family: arial, sans-serif;
                    
                    width: 100%;
                }

                td, th {
                    border: 1px solid gold;
                    text-align: left;
                    padding: 8px;
                }

                tr:nth-child(even) {
                    background-color: gainsboro;
                }
            </style>    
            <h1 style="text-align: center;color: red;font-size: 3rem">PAGE FORGE STATISTIC</h1>
            <p style="text-align: center;color: blueviolet;font-size: 2rem">here is everything Admin, I need to watch over</p>
            <table>
                <tr>
                    <th></th>
                    <th>Comment</th>
                    <th>Dowload</th>
                </tr>
                <c:forEach items="${requestScope.listmodall}" var="c">
                <tr>
                    <td>Alfreds Futterkiste</td>
                    <td>Maria Anders</td>
                    <td>Germany</td>
                </tr>
                </c:forEach>
                <tr>
                    <td>Account</td>
                    <td>Francisco Chang</td>
                    <td>Mexico</td>
                </tr>

                </tr>
                <tr>
                    <td>MOD</td>
                    <td>Giovanni Rovelli</td>
                    <td>Italy</td>
                </tr>
            </table>



        </div>



        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <div class="footer">
            <p class="Ceator">
                Made with ♥ by An the Students of FPT<br/>
                Admin:antrung@gmail.com
                <a href="https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox">Contact Me</a>


                <c:if test="${sessionScope.AD!=null}">
                    <a href="statistic">Statistic of server!</a>
                </c:if>
            </p>
        </div>
    </body>
</html>
