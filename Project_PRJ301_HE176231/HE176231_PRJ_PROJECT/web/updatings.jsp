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
                <a style="padding-right: 7rem;background-image: url(img/All.png)" href="getMod?type_id=9"></a>


                <c:forEach items="${requestScope.type}" var="c">
                    <li>

                        <a style="padding-right: 7rem; text-decoration:none;font-style:italic ;color:cornsilk" href="home?type_id=${c.type_id}">
                            <img src="${c.imagine}" width="40px" height="auto" alt=""/>
                            ${c.type_name}
                        </a>
                    </li>
                </c:forEach>

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





                <c:if test="${sessionScope.acc!=null}">
                    <style>
                        #add{
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
                        #add a:link{
                            float: top;
                            text-decoration: none;
                            color: hotpink;

                        }
                    </style>
                    <div style="text-align: center; color: wheat">

                        <a href="add">
                            <img height="30px" width="auto" src="img/add.png" alt=""/>
                        </a>
                    </div>

                </c:if>



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

        <c:forEach items="${requestScope.listupdate}" var="c">
            <div id="boxing">
                <img style="float:left;" src="${c.imagine}" alt=""/>
                <a href="home.jsp"></a>

                <a  style="padding-left: 2rem; float: next" href="see?id=${c.mod_id}">
                    ${c.mod_name}
                    <c:set var="kk" value="${c.mod_id}"/>
                </a>
                <p style="padding-right:5rem;padding-left:1rem; float: next;text-align: center;font-size: 19px">
                    ${c.mod_detail}
                </p>
                <p style="padding-right:5rem;padding-left:1rem; float: right;text-align: right;font-size: 10px">
                    ${c.date}
                </p>
            </div>
        </c:forEach>


        <p style="font-size: 40px;text-align: center;color: wheat">upgrade</p><br/>        

                    

        
            <div style="color: red" class="container">
                <form action="updating2?tid=${kk}" method="post">
                    
                    
                New Mod name:
                <input type="text" placeholder="Mod_name..." name="name#3" required>
                New Imagine:
                <input type="text" placeholder="imagine..." name="img_mod" required>
                New Descripstion:
                <input type="text" placeholder="Descripstion..." name="des" required>
                New Type id:
                <input type="text" placeholder="Type id...." name="typeid" required>
                <a style="text-decoration: none;" href="home" class="cancelbtns">Back</a>
                
                <input type="submit" name="name"/>
                <img width="30px" src="img/update.png" alt=""/>
                </form>
            </div>

        



        <!--            String id_raw=
                    request.getParameter("id");
                    String name_raw=request.getParameter("modname");
                    String des_raw=request.getParameter("des");
                    String type_raw=request.getParameter("typeid");
                    String img_raw=request.getParameter("img_mod");
        
        //            dao.update(id_raw, name_raw, img_raw, des_raw, type_raw);
        -->



        <br/>



        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <div class="footer">
            <p class="Ceator">
                Made with ♥ by An the Students of FPT<br/>
                Admin:antrung@gmail.com
                <a href="https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox">Contact Me</a>
            </p>
        </div>
    </body>
</html>
