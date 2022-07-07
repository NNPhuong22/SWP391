<%-- 
    Document   : profile2
    Created on : 02-Oct-2021, 20:46:10
    Author     : NNPhuong
--%>

    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:set var="path" value="${pageContext.request.contextPath}" />
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
                <!--  All snippets are MIT license http://bootdey.com/license -->
                <title>Personal Profile</title>
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
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
                <script src="${path}/asset/js/connection.js"></script>
            </head>

            <body>
                <div class="container">
                    <div class="main-body">

                        <!--Navigation-->
                        <jsp:include page="/views/nav.jsp"></jsp:include>
                        <!-- Main -->
                        <div class="row gutters-sm">
                            <div class="col-md-4 mb-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex flex-column align-items-center text-center">

                                            <!--Avatar source-->
                                            <img src="${user.avatar}" value="${user.avatar}" alt="Admin" class="rounded-circle" width="150">

                                            <!--                                    <div class="mt-3">
                                        <h4>Avatar</h4>
                                        <input type="text" name="avatar" class="form-control" value="${user.avatar}">
                                    </div>-->
                                        </div>
                                    </div>
                                </div>


                            </div>
                            <div class="col-md-8">


                                <div class="card mb-3">
                                    <div class="card-body">
                                        <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">Information</i></h6>

                                        <form action="http://localhost:8080/QuizPractice/EditProfileController" method="POST">
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">First Name</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" name="fname" class="form-control" value="${user.firstname}">
                                                    <input type="hidden" name="email" class="form-control" value="${user.email}">

                                                    <!--avatar update later-->


                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Last Name</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" name="lname" class="form-control" value="${user.lastname}">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Birth</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="date" name="birth" class="form-control" value="${user.birthdate}">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Gender</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    Male <input type="radio" name="gender" value="m" value="m" ${user.gender=='m' ? 'checked' : ''}> Female <input type="radio" name="gender" value="f" value="f" ${user.gender=='f' ? 'checked' : ''}>
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Description</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" name="description" class="form-control" value="${user.description}">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Phone number</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" name="phonenum" class="form-control" value="${user.phonenum}">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Address</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" name="address" class="form-control" value="${user.address}">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Avatar</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" name="avatar" class="form-control" value="${user.avatar}">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Position</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" name="position" class="form-control" value="${user.position}">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">School</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" name="school" class="form-control" value="${user.school}">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Company</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" name="company" class="form-control" value="${user.company}">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Sign</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" name="sign" class="form-control" value="${user.sign}">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Visa</h6>
                                                </div>
                                                <div class="col-sm-9 text-secondary">
                                                    <input type="text" name="visa" class="form-control" value="${user.visa}">
                                                </div>
                                            </div>
                                            <hr>
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <h6 class="mb-0">Payment method</h6>
                                                </div>
                                                <div class="col-sm-9">
                                                    <select name="paymethod">
                                        <option>COD</option>
                                        <option>Cash</option>
                                    </select>
                                                </div>
                                            </div>
                                            <hr>
                                            <input type="submit" class="btn btn-primary px-4" value="Save Changes">
                                            <a class="btn btn-info " target="__blank" href="${path}/views/profile/profile.jsp">Cancel</a>
                                        </form>

                                    </div>
                                </div>





                            </div>
                        </div>
                        <!--Footer-->
                        <jsp:include page="/views/footer.jsp"></jsp:include>
                    </div>
                </div>

                <style type="text/css">
                    input[type="radio"] {
                        -webkit-appearance: radio !important;
                    }
                    
                    body {
                        margin-top: 100px;
                        margin-left: 100px;
                        color: #1a202c;
                        text-align: left;
                        background-color: #e2e8f0;
                    }
                    
                    .btn--radio {
                        height: 10px !important;
                        width: 10px !important;
                    }
                    
                    .main-body {
                        padding: 15px;
                    }
                    
                    .card {
                        box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .1), 0 1px 2px 0 rgba(0, 0, 0, .06);
                    }
                    
                    .card {
                        position: relative;
                        display: flex;
                        flex-direction: column;
                        min-width: 0;
                        word-wrap: break-word;
                        background-color: #fff;
                        background-clip: border-box;
                        border: 0 solid rgba(0, 0, 0, .125);
                        border-radius: .25rem;
                    }
                    
                    .card-body {
                        flex: 1 1 auto;
                        min-height: 1px;
                        padding: 1rem;
                    }
                    
                    .gutters-sm {
                        margin-right: -8px;
                        margin-left: -8px;
                    }
                    
                    .gutters-sm>.col,
                    .gutters-sm>[class*=col-] {
                        padding-right: 8px;
                        padding-left: 8px;
                    }
                    
                    .mb-3,
                    .my-3 {
                        margin-bottom: 1rem!important;
                    }
                    
                    .bg-gray-300 {
                        background-color: #e2e8f0;
                    }
                    
                    .h-100 {
                        height: 100%!important;
                    }
                    
                    .shadow-none {
                        box-shadow: none!important;
                    }
                </style>

                <script type="text/javascript">
                </script>
            </body>

            </html>