<%-- 
    Document   : update
    Created on : Mar 16, 2023, 8:36:52 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>

        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>
    <style>
        #header{
            position: fixed;
            width: 100%;
            height: auto;
        }
    </style>
    <body style="background-color: black">
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
        <div id="second">


            <div class="search">
                <style>
                    .search{
                        border: 5px;
                        border-color: gold;
                    }
                </style>



            </div>
            <div style="margin-left: 3rem;">
                <a style="text-decoration: none;font-size: 2rem; display: none" href="getTypes"> Show types </a><br/><!-- comment -->
            </div>

            <ul id="typechose" style="display: inline-flex;">
                <a style="padding-right: 7rem;height: 60px;background-image: url(img/All.png)" href="getMod?type_id=9"></a>
        </div>
        <style>
            .dropbtn {
                background-color: #a49fad;
                color: black;
                padding: 5px;
                padding-left: 1rem;
                padding-right: 1rem;
                font-size: 19px;
                border: 2px navy;
            }

            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: gainsboro;
                min-width: 190px;
                box-shadow: 0px 8px 19px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                font-family:'Courier New';
                font-size: 16px;
            }

            .dropdown-content a:hover {
                background-color: #ddd;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }

            .dropdown:hover .dropbtn {
                background-color: #3e8e41;
            }
        </style>
    </div>


    <style>
        #boxing{
            margin-left: 20px;
            margin-right:20px;
            margin-top: 10px;
            margin-bottom: 10px;
            border: 2px;
            border-color: gray;
            background-color: #333333;
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
<!--        <input type="hidden" name="id" value="${mod_id}"-->

    <c:forEach items="${sessionScope.listupdate}" var="c">
        <div id="boxing">
            <img style="float:left;" src="${c.imagine}" alt=""/>
            <a href="home.jsp"></a>

            <a  style="padding-left: 2rem; float: next" href="see?id=${c.mod_id}">
                ${c.mod_name}
            </a>
            <p style="padding-right:5rem;padding-left:1rem; float: next;text-align: center;font-size: 19px">
                ${c.mod_detail}
            </p>
            <p style="padding-right:5rem;padding-left:1rem; float: right;text-align: right;font-size: 10px">
                ${c.date}
            </p>
            <p style="padding-right:5rem;padding-left:1rem; float: right;text-align: right;font-size: 10px">


            </p>
            <a href="update" style="background-size: cover;background-image: url(img/dowload.png);background-repeat: no-repeat;"></a>
            <a href="download"
               <a href="delete" style="background-size: cover;background-image: url(img/delete.png);background-repeat: no-repeat;"></a>
        </div>

        <c:if test="${sessionScope.acc==null}">
            <c:set var="role" value="${sessionScope.acc.getRole()}"/>
            <div style="color:red">
                you haven't login yet
                <a style="color: yellow;background-color: black" href="login.jsp">do you want to login<a/>
            </div>
        </c:if>
        <style>
            h                         .dontknow{
                color:white;

            }

        </style>
        <div class="dontknow">



            <c:if test="${sessionScope.acc!=null}">
                <div style="text-align: center ;">
                    ${role}
                    <a style="padding-left: 10px" href="dowload?id=${c.mod_id}">
                        <img src="img/download.png" alt=""/>
                        <a/>
                        <!--///////////////////////////-->


                        <!--//////////////////////-->
                        <c:if test="${sessionScope.AD!=null}">


                            <a  style="padding-left: 10rem" href="updating?id=${c.mod_id}">

                                <img src="img/update.png" alt=""/>
                            </a>

                            <a style="padding-left: 10rem" href="delete?id=${c.mod_id}">

                                <img src="img/deleteplus.png" alt=""/>
                                <a/>
                            </c:if>
                            <c:if test="${sessionScope.AD==null}">
                                <a href="comment">
                                    <img style="padding-left: 10rem" width="auto" src="img/comment.png" alt=""/>
                                </a>


                                <a href="addlist">
                                    <img style="padding-left: 10rem" width="auto" src="img/addlist.png" alt=""/>
                                </a>
                                </div>

                                <form action="comment" method="post">
                                    <input type="hidden" name="id" value="${c.mod_id}"/>
                                    <div style="margin-left: 44%">
                                        <div style="color: blueviolet">comment:</div>
                                        <input type="text" name="context"/>
                                        <input type="submit" value="SEND"/>
                                    </div>
                                </form>
                                    
                                        <c:forEach items="${sessionScope.listcomment}" var="co">
                                            <div style="text-align: center" id="boxing">
                                    <div style="color: red;display:block">
                                        <c:set var="context" value="${co.getContent()}"/>
                                        <c:if test="${context!=null}">
                                        USER(
                                        ${co.getUserName()} )<br/>
                                        Comment:
                                        ${co.getContent()}<br/>
                                        </c:if>
                                        
                                        
                                    </div>
                                        </div>
                                </c:forEach>
                            </c:if>
                            </div>
                        </c:if>
                    </c:forEach>










                    </div>
                    <script src="js/bootstrap.min.js" type="text/javascript"></script>
                    <div class="footer" style="font-style: 19px">
                        <p class="Ceator">
                            Made with ♥ by An the Students of FPT<br/>
                            Admin:antrung@gmail.com
                            <a href="https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox">Contact Me</a>
                        </p>
                    </div>
                    </body>
                    </html>
