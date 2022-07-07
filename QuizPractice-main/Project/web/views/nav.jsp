<%--
    Document   : nav
    Created on : Sep 23, 2021, 10:02:56 PM
    Author     : VietThang
--%>

<%@page import="Enitity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Ezuni - Online Education System</title>
        <!-- Favicon-->
        <link rel="apple-touch-icon" sizes="180x180" href="${path}/asset/img/logo/apple-touch-icon.png" />
        <link rel="icon" type="image/png" sizes="32x32" href="${path}/asset/img/logo/favicon-32x32.png" />
        <link rel="icon" type="image/png" sizes="16x16" href="${path}/asset/img/logo/favicon-16x16.png" />
        <link rel="manifest" href="${path}/asset/img/logo/site.webmanifest" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" href="${path}/asset/css/reset.css" />
        <link href="${path}/asset/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="${path}/asset/css/nav.css" />
    </head>

    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="/QuizPractice/home"><img src="${path}/asset/img/logo/ezuni_5.png" alt="Ezuni_logo" /></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ms-1"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                        <!-- Search -->
                        <li class="nav-item">
                            <form action="FindSubjectController" class="search-box">
                                <input type="text" name="search" placeholder="Search"  >

                                <button type="submit" class="search-box__icon">
                                    <span span class="fa fa-search"></span>
                                </button>
                            </form>   
                        </li>
                        <!-- Search end here -->
                        <c:if test="${user != null}">
                            <li class="nav-item">
                                <a class="nav-link" href="/QuizPractice/SubjectController">All Course</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/QuizPractice/SubjectRegisterController">My Course</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/QuizPractice/practicelist">My Quiz</a>
                            </li>
                            <li class="nav-item avt_list">
                                    <div class="avt_avatar">
                                            <img class="avt_img" src=${user.avatar} alt="">
                                    </div>
                                    <div class="avt_dropbox">
                                        <ul>
                                            <li>
                                                <p><a href="${path}/views/profile/profile.jsp" class="avt_option"><i class="fas fa-user-circle"></i> Profile</a></p>
                                            </li>
                                            <li>
                                                <p><a href="${path}/views/common/changepass.jsp" class="avt_option"><i class="fas fa-key"></i>  Change Password</a></p>
                                            </li>
                                            <li>
                                                <p><a href="#" class="avt_option"><i class="fas fa-award"></i>  Accomplishment</a></p>
                                            </li>
                                            <li>
                                                <p><a href="${path}/views/common/contact.jsp" class="avt_option"><i class="fas fa-question-circle"></i>  Contact</a></p>
                                            </li>
                                            <li>
                                                <p><a href="/QuizPractice/LoggOutController" class="avt_option"><i class="fas fa-sign-out-alt"></i>  Log Out</a></p>
                                            </li>
                                        </ul>
                                    </div>
                            </li> 
                        </c:if>
                        <c:if test="${user == null}">
                        <li class="nav-item">
                            <a class="nav-link" href="${path}/views/common/about.jsp">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${path}/views/common/contact.jsp">Contact</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${path}/views/common/Login.jsp">Log in</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="${path}/views/common/register.jsp" id="nav-item__signup">Sign up</a>
                        </li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Bootstrap core JS-->
        <script src="${path}/asset/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="${path}/asset/JQuery/JQuery.js"></script>
        <!-- Core theme JS-->
        <script src="${path}/asset/js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script>
             // User avatar dropdown
            $(document).ready(function(){
                $(".avt_avatar").click(function(){
                $(".avt_dropbox").toggleClass("open")
                });
            });

        </script>
    </body>

</html>