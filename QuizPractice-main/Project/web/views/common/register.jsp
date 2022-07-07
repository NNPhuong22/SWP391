<%--
    Document   : register1
    Created on : 27-Sep-2021, 13:53:47
    Author     : NNPhuong
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>

    <body>
        <div class="container register">
            <div class="row">
                <div class="col-md-3 register-left">
                    <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
                    <h3>Welcome</h3>
                    <p>You are 30 seconds away from learning good thing!</p>
                    <a href="${path}/views/common/Login.jsp">Login</a>
                </div>
                <div class="col-md-9 register-right">
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                            <c:if test="${mess!=null}">
                                <div class="alert alert-primary" role="alert">${mess}</div>
                            </c:if>
                            <h3 class="register-heading">Register as a Student</h3>
                            <form action="/QuizPractice/registercontroller" method="POST">
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="firstname" placeholder="First Name *" required />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="lastname" placeholder="Last Name *" required/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="username" placeholder="Username *" required />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" id="password" name="password" placeholder="Password *" required onkeyup='check();' />
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" id="repassword" name="repassword" placeholder="Confirm Password *" required onkeyup='check();' />
                                            <span id='message'></span>
                                        </div>
                                        <div class="form-group">
                                            <input type="email" class="form-control" name="email" placeholder="Your Email" required />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="avatar" placeholder="Avatar" required />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" class="form-control" name="phonenum" placeholder="Phone number" required />
                                        </div>
                                        <div class="form-group">
                                            <input type="date" name="date" id="date" class="form-control" placeholder="Birthdate" required onkeyup='checkdate();' />
                                            <span id='datemess'></span>
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline">
                                                    <input type="radio" name="gender" value="male" checked>
                                                    <span> Male </span>
                                                </label>
                                                <label class="radio inline">
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Description" name="script" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" name="address" class="form-control" placeholder="Your Address" />
                                        </div>
                                        <div class="form-group">
                                            <input type="hidden" class="form-control" name="status" value="Active" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="visa" placeholder="Your visa" />
                                        </div>
                                        Payment method:
                                        <div class="form-group">
                                            <select name="paymethod">
                                                <option>COD</option>
                                                <option>Cash</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="position" placeholder="Position" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="sign" placeholder="Sign" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="company" placeholder="Company" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" name="school" placeholder="School" />
                                        </div>

                                    </div>
                                    <input type="submit" class="btnRegister" value="Register" />
                                    <input type="button" class="btnRegister" value="Cancel" />
                                </div>
                            </form>
                        </div>
                        <div class="tab-pane fade show" id="profile" role="tabpanel" aria-labelledby="profile-tab">


                        </div>
                    </div>
                </div>
            </div>

        </div>
    </body>
    <style>
        body {
            background: #60a3bc;
        }

        .register {
            background: -webkit-linear-gradient(left, #3931af, #00c6ff);
            margin-top: 3%;
            padding: 3%;
        }

        .register-left {
            text-align: center;
            color: #fff;
            margin-top: 4%;
        }

        .register-left input {
            border: none;
            border-radius: 1.5rem;
            padding: 2%;
            width: 60%;
            background: #f8f9fa;
            font-weight: bold;
            color: #383d41;
            margin-top: 30%;
            margin-bottom: 3%;
            cursor: pointer;
        }

        .register-right {
            background: #f8f9fa;
            border-top-left-radius: 10% 50%;
            border-bottom-left-radius: 10% 50%;
        }

        .register-left img {
            margin-top: 15%;
            margin-bottom: 5%;
            width: 25%;
            -webkit-animation: mover 2s infinite alternate;
            animation: mover 1s infinite alternate;
        }

        @-webkit-keyframes mover {
            0% {
                transform: translateY(0);
            }
            100% {
                transform: translateY(-20px);
            }
        }

        @keyframes mover {
            0% {
                transform: translateY(0);
            }
            100% {
                transform: translateY(-20px);
            }
        }

        .register-left p {
            font-weight: lighter;
            padding: 12%;
            margin-top: -9%;
        }

        .register .register-form {
            padding: 10%;
            margin-top: 10%;
        }

        .btnRegister {
            float: right;
            margin-top: 10%;
            border: none;
            border-radius: 1.5rem;
            padding: 2%;
            background: #0062cc;
            color: #fff;
            font-weight: 600;
            width: 50%;
            cursor: pointer;
        }

        .register .nav-tabs {
            margin-top: 3%;
            border: none;
            background: #0062cc;
            border-radius: 1.5rem;
            width: 28%;
            float: right;
        }

        .register .nav-tabs .nav-link {
            padding: 2%;
            height: 34px;
            font-weight: 600;
            color: #fff;
            border-top-right-radius: 1.5rem;
            border-bottom-right-radius: 1.5rem;
        }

        .register .nav-tabs .nav-link:hover {
            border: none;
        }

        .register .nav-tabs .nav-link.active {
            width: 100px;
            color: #0062cc;
            border: 2px solid #0062cc;
            border-top-left-radius: 1.5rem;
            border-bottom-left-radius: 1.5rem;
        }

        .register-heading {
            text-align: center;
            margin-top: 8%;
            margin-bottom: -15%;
            color: #495057;
        }
    </style>
    <script>
        var check = function () {
            if (document.getElementById('password').value ==
                    document.getElementById('repassword').value) {
                document.getElementById('message').style.color = 'green';
                document.getElementById('message').innerHTML = 'matching';
            } else {
                document.getElementById('message').style.color = 'red';
                document.getElementById('message').innerHTML = 'not matching';
            }
        }

        function checkdate() {
            if (document.getElementById('date').value <=
                    "2077-01-01" && document.getElementById('date').value >= "1900-01-01") {
                document.getElementById('datemess').style.color = 'green';
                document.getElementById('datemess').innerHTML = "Valid";
            } else {
                document.getElementById('datemess').style.color = 'red';
                document.getElementById('datemess').innerHTML = 'Invalid birthdate (Birthdate only in range [ 1/1/1990-1/1/2077 ])';
            }
        }
    </script>
    <script src="${path}/asset/js/connection.js"></script>
</html>