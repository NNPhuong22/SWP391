<%-- 
    Document   : resetpass
    Created on : 19-Oct-2021, 23:16:03
    Author     : NNPhuong
--%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <c:set var="path" value="${pageContext.request.contextPath}" />
            <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
            <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
            <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
            <!DOCTYPE html>
            <html lang="zxx">

            <head>

                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <title>Hanger - Login | Register</title>
                <meta name="robots" content="index, follow" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <!-- Favicon -->
                <link rel="shortcut icon" type="image/x-icon" href="${path}/assets/images/logo2.png" />

                <!-- CSS
        ============================================ -->

                <link rel="stylesheet" href="${path}/assets/css/bootstrap.min.css" />
                <link rel="stylesheet" href="${path}/assets/css/font-awesome.min.css" />
                <link rel="stylesheet" href="${path}/assets/css/Pe-icon-7-stroke.css" />
                <link rel="stylesheet" href="${path}/assets/css/animate.min.css">
                <link rel="stylesheet" href="${path}/assets/css/swiper-bundle.min.css">
                <link rel="stylesheet" href="${path}/assets/css/nice-select.css">
                <link rel="stylesheet" href="${path}/assets/css/magnific-popup.min.css" />
                <link rel="stylesheet" href="${path}/assets/css/ion.rangeSlider.min.css" />

                <!-- Style CSS -->
                <link rel="stylesheet" href="${path}/assets/css/style.css">
                <script src="${path}/asset/js/connection.js"></script>
            </head>

            <body>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-md-4 col-md-offset-4">
                            <h1 class="text-center login-title"></h1>
                            <div class="account-wall">
                                <img class="profile-img" src="${path}/asset/img/logo/ezuni_5.png" alt="">
                                <form class="form-signin" action="/QuizPractice/ResetPasswordController">
                                    <div class="form-group">
                                        <input type="password" class="form-control" id="password" name="password" placeholder="Password *" required onkeyup='check();' />
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control" id="repassword" name="repassword" placeholder="Confirm Password *" required onkeyup='check();' />
                                        <span id='message'></span>
                                    </div>
                                    <button class="btn btn-lg btn-primary btn-block" type="submit">
                                Reset Password</button>
                                    <a href="${path}/views/common/Login.jsp" class="pull-right need-help">Back to Login </a><span class="clearfix"></span>
                                </form>
                            </div>
                            <a href="${path}/views/common/register.jsp" class="text-center new-account">Create an account </a>
                        </div>
                    </div>
                </div>
            </body>
            <style>
                body {
                    background-color: #60a3bc;
                }
                
                .form-signin {
                    max-width: 330px;
                    padding: 15px;
                    margin: 0 auto;
                }
                
                .form-signin .form-signin-heading,
                .form-signin .checkbox {
                    margin-bottom: 10px;
                }
                
                .form-signin .checkbox {
                    font-weight: normal;
                }
                
                .form-signin .form-control {
                    position: relative;
                    font-size: 16px;
                    height: auto;
                    padding: 10px;
                    -webkit-box-sizing: border-box;
                    -moz-box-sizing: border-box;
                    box-sizing: border-box;
                }
                
                .form-signin .form-control:focus {
                    z-index: 2;
                }
                
                .form-signin input[type="text"] {
                    margin-bottom: -1px;
                    border-bottom-left-radius: 0;
                    border-bottom-right-radius: 0;
                }
                
                .form-signin input[type="password"] {
                    margin-bottom: 10px;
                    border-top-left-radius: 0;
                    border-top-right-radius: 0;
                }
                
                .account-wall {
                    margin-top: 20px;
                    padding: 40px 0px 20px 0px;
                    background-color: #f7f7f7;
                    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                }
                
                .login-title {
                    color: #555;
                    font-size: 18px;
                    font-weight: 400;
                    display: block;
                }
                
                .profile-img {
                    width: 96px;
                    height: 96px;
                    margin: 0 auto 10px;
                    display: block;
                    -moz-border-radius: 50%;
                    -webkit-border-radius: 50%;
                    border-radius: 50%;
                }
                
                .need-help {
                    margin-top: 10px;
                }
                
                .new-account {
                    display: block;
                    margin-top: 10px;
                }
            </style>
            <script>
                var check = function() {
                    if (document.getElementById('password').value ==
                        document.getElementById('repassword').value) {
                        document.getElementById('message').style.color = 'green';
                        document.getElementById('message').innerHTML = 'matching';
                    } else {
                        document.getElementById('message').style.color = 'red';
                        document.getElementById('message').innerHTML = 'not matching';
                    }
                }
            </script>

            </html>