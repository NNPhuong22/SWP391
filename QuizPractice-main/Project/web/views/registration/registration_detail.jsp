<%-- 
    Document   : registration_detail
    Created on : Nov 2, 2021, 9:43:22 PM
    Author     : vuntd
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:set var="path" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Registration Detail</title>
                <!-- CSS only -->
                <link rel="stylesheet" href="${path}/asset/bootstrap/css/bootstrap.min.css">
                <link rel="stylesheet" type="text/css" href="${path}/asset/css/blogStyle.css">
                <script src="${path}/asset/js/connection.js"></script>
            </head>

            <body>
                <!-- header -->
                <section class="py-5">
                    <div id="header">
                        <jsp:include page="/views/nav.jsp"></jsp:include>
                    </div>
                </section>
                <!--information tables-->
                <h2 class="text-center">Registration detail</h2>
                <div class="card">
                    <div class="card-header">
                        User information
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-4">Name</div>
                            <div class="col-8">${u.getFirstname()} ${u.getLastname()}</div>
                        </div>
                        <div class="row">
                            <div class="col-4">Gender</div>
                            <div class="col-8">${u.getGender()}</div>
                        </div>
                        <div class="row">
                            <div class="col-4">Email</div>
                            <div class="col-8">${u.getEmail()}</div>
                        </div>
                        <div class="row">
                            <div class="col-4">Mobile</div>
                            <div class="col-8">${u.getPhonenum()}</div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        Subject registration information
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-4">Subject</div>
                            <div class="col-8">${r.getName()}</div>
                        </div>
                        <div class="row">
                            <div class="col-4">Price / Discount</div>
                            <div class="col-8">${r.getPrice()} $/ ${r.getDiscount()}%</div>
                        </div>
                        <div class="row">
                            <div class="col-4">Registration Date</div>
                            <div class="col-8">${r.getDate()}</div>
                        </div>
                        <!--status, valid from, valid to, notes-->
                    </div>
                </div>
                <div id="footer">
                    <jsp:include page="/views/footer.jsp"></jsp:include>
                </div>



                <!-- JavaScript Bundle with Popper -->
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            </body>

            </html>