<%-- 
    Document   : profile
    Created on : 02-Oct-2021, 20:42:22
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
    </head>
    <body>
        <div class="container">
            <div class="main-body">

                <!--Navigation-->
                <jsp:include page="/views/nav.jsp"></jsp:include>
                <!-- Main -->
                <c:if test="${mess!=null}">
                                <div class="alert alert-primary" role="alert">${mess}</div> 
                            </c:if>
                <div class="row gutters-sm">
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-flex flex-column align-items-center text-center">

                                    <!--Avatar source-->
                                    <img src="${user.avatar}" alt="Admin" class="rounded-circle" width="150">

                                    <div class="mt-3">
                                        <h4>${user.username}</h4>
                                        <a class="btn btn-primary" href="${path}/views/common/changepass.jsp">Change password</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mt-3">
                            <ul class="list-group list-group-flush">
                                <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">Contact</i></h6>

                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0"><img src="data:image/png;base64,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" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe mr-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></img>Phone Number</h6>
                                    <span class="text-secondary">${user.phonenum}</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0"><img src="https://thumbs.dreamstime.com/b/email-icon-isolated-white-background-email-icon-trendy-design-style-email-icon-isolated-white-background-email-icon-183701610.jpg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github mr-2 icon-inline"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></img>Email</h6>
                                    <span class="text-secondary">${user.email}</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0"><img src="https://i.pinimg.com/564x/4e/dc/b4/4edcb460a940ff726549077935f57168.jpg" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter mr-2 icon-inline text-info"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></img>Address</h6>
                                    <span class="text-secondary">${user.address}</span>
                                </li>
                            </ul>
                        </div>
                        <div class="card mt-3">
                            <ul class="list-group list-group-flush">
                                <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">Payment</i></h6>

                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0"><img src="data:image/png;base64,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" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe mr-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></img>Visa</h6>
                                    <span class="text-secondary">${user.visa}</span>
                                </li>
                                <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                                    <h6 class="mb-0"><img src="https://image.flaticon.com/icons/png/512/1019/1019607.png" width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github mr-2 icon-inline"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></img>Payment Method</h6>
                                    <span class="text-secondary">${user.paymethod}</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-8">
                        

                        <div class="card mb-3">
                            <div class="card-body">
                                <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">Information</i></h6>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">First Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${user.firstname}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Last Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${user.lastname}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">User Name</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${user.username}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Birth</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${user.birthdate}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Gender</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${user.gender}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Description</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${user.description}
                                    </div>
                                </div>
                                <hr>
                                
                                <div class="row">
                                    <div class="col-sm-12">
                                        <a class="btn btn-info " target="__blank" href="${path}/views/profile/editprofile.jsp">Edit</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="card-body">
                                <h6 class="d-flex align-items-center mb-3"><i class="material-icons text-info mr-2">Business</i></h6>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Position</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${user.position}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Company</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${user.company}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">School</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${user.school}
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <h6 class="mb-0">Sign</h6>
                                    </div>
                                    <div class="col-sm-9 text-secondary">
                                        ${user.sign}
                                    </div>
                                </div>
                                <hr>
                                
                            </div>
                        </div>

                        



                    </div>
                </div>
                <!--Footer-->
                <jsp:include page="/views/footer.jsp"></jsp:include>
            </div>
        </div>

        <style type="text/css">
            body{
                margin-top:100px;
                margin-left: 100px;
                color: #1a202c;
                text-align: left;
                background-color: #e2e8f0;    
            }
            .main-body {
                padding: 15px;
            }
            .card {
                box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
            }

            .card {
                position: relative;
                display: flex;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #fff;
                background-clip: border-box;
                border: 0 solid rgba(0,0,0,.125);
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

            .gutters-sm>.col, .gutters-sm>[class*=col-] {
                padding-right: 8px;
                padding-left: 8px;
            }
            .mb-3, .my-3 {
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
