<%-- 
    Document   : registration_list
    Created on : Nov 2, 2021, 9:43:08 PM
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
                <title>Registration List</title>
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
                <!-- title -->
                <div class="container py-5">
                    <div class="text-center">
                        <h2>Registration Manager</h2>
                    </div>

                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addModal">Add new Registration</button>
                    <!-- table-->
                    <div class="col-lg-8">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th scope="col">ID</th>
                                    <th scope="col">Email</th>

                                    <th scope="col">Subject</th>
                                    <th scope="col">Total cost</th>
                                    <th scope="col">Registration Date</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">View detail</th>
                                    <th scope="col">Change status</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${srl}" var="o">
                                    <tr>
                                        <td>${o.getSr_id()}</td>
                                        <td>${o.getU_email()}</td>
                                        <td>${o.getName()}</td>
                                        <td>${o.getPrice()} $</td>
                                        <td>${o.getDate()}</td>
                                        <td>${o.getStatus()}</td>
                                        <td>
                                            <a href="RegistrationDetail?srid=${o.getSr_id()}"><button type="button" class="btn btn-secondary">View detail</button></a>
                                        </td>
                                        <td>
                                            <a href="RegistrationStatus?srid=${o.getSr_id()}"><button type="button" class="btn btn-secondary">Change status</button></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div id="footer">
                        <jsp:include page="/views/footer.jsp"></jsp:include>
                    </div>


                </div>
                <!--Add blog Modal -->
                <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="RegistrationAdd" method="post">
                                <div class="modal-header">
                                    <h5 class="modal-title text-center" id="exampleModalLabel">Add a new Registration</h5>
                                    <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label>Customer</label>
                                        <select name="cid" class="form-select" aria-label="Default select example">
                            <c:forEach items="${cl}" var="o">
                                <option value="${o.getId()}">${o.getEmail()}</option>
                                </c:forEach>
                              
                            </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Subject</label>
                                        <select name="pid" class="form-select" aria-label="Default select example">
                            <c:forEach items="${pl}" var="o">
                                <option value="${o.getPrice_id()}">${o.getS_name()} - ${o.getPrice()}$</option>                                
                             </c:forEach>                                 
                            </select>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                    <input type="submit" class="btn btn-success" value="Add">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>



                <!-- JavaScript Bundle with Popper -->
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            </body>

            </html>