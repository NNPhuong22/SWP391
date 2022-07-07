<%-- 
    Document   : manageSubject
    Created on : Oct 24, 2021, 1:12:19 AM
    Author     : hieu phan
--%>

<%@page import="Enitity.Price"%>
<%@page import="DAO.RegisterDAO"%>
<%@page import="Enitity.SubjectType"%>
<%@page import="Enitity.Subject"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
        <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800&display=swap" rel="stylesheet" />
        <!-- CSS asset (includes Bootstrap)-->
        <link rel="stylesheet" href="${path}/asset/css/reset.css" />
        <link href="${path}/asset/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <!-- Stylesheet -->
        <!--        <link rel="stylesheet" href="${path}/asset/css/subject/vendor.css">-->
        <!--<link rel="stylesheet" href="${path}/asset/css/subject/style.css">-->
        <link rel="stylesheet" href="${path}/asset/css/subject/responsive.css">
        <link rel="stylesheet" href="${path}/asset/css/subject/color-blue.css">

        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">

        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>
        <script src="${path}/asset/js/connection.js"></script>
    </head>

    <body>
        <%
            List<Subject> subjects = (List<Subject>) session.getAttribute("subOfIns");
            List<SubjectType> types = (List<SubjectType>) request.getAttribute("types");
            RegisterDAO rd = new RegisterDAO();
            Integer totalPrice = (Integer) session.getAttribute("totalPrice");
        %>
        <jsp:include page="/views/nav.jsp"></jsp:include>
            <div class="container content" style="margin-top: 190px;">
                <!-- Content Row -->
                <div class="row">
                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-4 col-md-6 mb-4">
                        <div class="card border-left-primary shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                            Visit (Monthly)</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">40,000</div>
                                    </div>
                                    <div class="col-auto">
                                        <i class="fas fa-calendar fa-2x text-gray-300"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Earnings (Monthly) Card Example -->
                    <div class="col-xl-4 col-md-6 mb-4">
                        <div class="card border-left-success shadow h-100 py-2">
                            <div class="card-body">
                                <div class="row no-gutters align-items-center">
                                    <div class="col mr-2">
                                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                            Earnings (Annual)</div>
                                        <div class="h5 mb-0 font-weight-bold text-gray-800">$
                                        <%=totalPrice%>
                                    </div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <!-- Pending Requests Card Example -->
                <div class="col-xl-4 col-md-6 mb-4">
                    <div class="card border-left-warning shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                        Students</div>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">180</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-comments fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Content Row -->
            <h1 style="display: inline-block;">Manage your subjects</h1>
            <button class="btn btn-info" style="display: inline-block; float: right;" data-toggle="modal" data-target="#addSubject">Add New Subject</button>
            <div class="modal fade" id="addSubject" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <form action='subjectManage?action=add' method="POST">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Add New Subject</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <div class="form-group row">
                                    <label for="addSubjectName" class="col-sm-2 col-form-label">Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="addSubjectName" required class="form-control" id="addSubjectName">
                                    </div>
                                </div><br>
                                <div class="form-group row">
                                    <label for="addSubjectType" class="col-sm-2 col-form-label">Type</label>
                                    <div class="col-sm-10">
                                        <select name="addSubjectType" required class="form-control" id="addSubjectType" placeholder="Subject Type">
                                            <% for (SubjectType t : types) {%>

                                            <option value="<%=t.getId()%>" ><%=t.getName()%></option>

                                            <% }%>
                                        </select>
                                    </div>
                                </div><br>
                                <div class="form-group row">
                                    <label for="addSubjectDes" class="col-sm-2 col-form-label">Subject Description</label>
                                    <div class="col-sm-10">
                                        <textarea style='height: 200px;' type="text" name="addSubjectDes"  required class="form-control" id="addSubjectDes" placeholder="Subject Description"></textarea>
                                    </div>
                                </div>
                                <br>
                                <div class="form-group row">
                                    <label for="addSubjectOrg" class="col-sm-2 col-form-label">Organization</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="addSubjectOrg"  required class="form-control" id="addSubjectOrg" placeholder="Subject Organization">
                                    </div>
                                </div><br>

                                <div class="input-group mb-3">
                                    <label for="addSubjectPrice" class="col-sm-2 col-form-label">Price</label>

                                    <div class="input-group-prepend">
                                        <span class="input-group-text">$</span>
                                    </div>
                                    <input id="addSubjectPrice"  name='addSubjectPrice' type="number" class="form-control" aria-label="Amount (to the nearest dollar)">
                                    <div class="input-group-append">
                                        <span class="input-group-text">.00</span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="addSubjectImage" class="col-sm-2 col-form-label">Subject Image</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="addSubjectImage"  class="form-control" id="addSubjectImage">
                                    </div>
                                </div><br>
                                <input type="text" name="addSubjectLogo" value="null" class="form-control d-none" id="addSubjectLogo">

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Add New Subject</button>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <table id="example" class="display" style="width:100%">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Type</th>
                        <th>Organization</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Subject sj : subjects) {
                            Price p = rd.getPrice(Integer.toString(sj.getS_id()));
                    %>

                    <tr>
                        <td>
                            <%=sj.getName()%>
                        </td>
                        <td>
                            <%=sj.getType_id() %>
                        </td>
                        <td>
                            <%=sj.getOrganization()%>
                        </td>

                        <td>
                            <button class="btn btn-info"><a href='LessonController?subID=<%=sj.getS_id()%>' style="text-decoration: none; color: white;">View</a></button>
                            <button class="btn btn-success" data-toggle="modal" data-target="#editSubject<%=sj.getS_id()%>">Edit</button>
                            <button class="btn btn-danger"><a href='subjectManage?action=delete&subID=<%=sj.getS_id()%>' style="text-decoration: none; color: white;">Disable</a></button></td>
                <div class="modal fade" id="editSubject<%=sj.getS_id()%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <form action='subjectManage?action=edit' method="POST">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Update Subject Info</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">

                                    <div class="form-group row">
                                        <label for="name" class="col-sm-2 col-form-label">Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="subjectName" required class="form-control" id="name" value="<%=sj.getName()%>">
                                        </div>
                                    </div><br>
                                    <div class="form-group row">
                                        <label for="subjectType" class="col-sm-2 col-form-label">Type</label>
                                        <div class="col-sm-10">
                                            <select name="subjectType" required class="form-control" id="subjectType" placeholder="Subject Type">
                                                <% for (SubjectType t : types) { %>
                                                <% if (t.getId() == sj.getType_id()) {%>
                                                <option value="<%=t.getId()%>" selected><%=t.getName()%></option>
                                                <% } else {%>
                                                <option value="<%=t.getId()%>" ><%=t.getName()%></option>
                                                <% } %>
                                                <% }%>
                                            </select>
                                        </div>
                                    </div><br>
                                    <div class="form-group row">
                                        <label for="subjectDes" class="col-sm-2 col-form-label">Subject Description</label>
                                        <div class="col-sm-10">
                                            <textarea style='height: 200px;' type="text" name="subjectDes" value="<%=sj.getDescription()%>" required class="form-control" id="subjectDes" placeholder="Subject Description"><%=sj.getDescription()%></textarea>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="form-group row">
                                        <label for="subjectOrg" class="col-sm-2 col-form-label">Organization</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="subjectOrg" value="<%=sj.getOrganization()%>" required class="form-control" id="subjectOrg" placeholder="Subject Organization">
                                        </div>
                                    </div><br>

                                    <div class="input-group mb-3">
                                        <label for="subjectPrice" class="col-sm-2 col-form-label">Price</label>

                                        <div class="input-group-prepend">
                                            <span class="input-group-text">$</span>
                                        </div>
                                        <input id="subjectPrice" value="<%=p.getPrice()%>" name='subjectPrice' type="number" class="form-control" aria-label="Amount (to the nearest dollar)">
                                        <div class="input-group-append">
                                            <span class="input-group-text">.00</span>
                                        </div>
                                    </div>
                                    <input type="text" name="priceID" value="<%=p.getPrice_id()%>" class="form-control d-none" id="priceID">
                                    <input type="text" name="subjectImage" value="<%=sj.getImage()%>" class="form-control d-none" id="subjectImage">
                                    <input type="text" name="subjectID" value="<%=sj.getS_id()%>" class="form-control d-none" id="subjectID">
                                    <input type="text" name="subjectLogo" value="null" class="form-control d-none" id="subjectLogo">

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary">Edit</button>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                </tr>

                <% }%>

                </tbody>

            </table>
        </div>
    </body>
    <script src="${path}/asset/JQuery/JQuery.js"></script>
    <!-- all plugins here -->
    <script src="${path}/asset/js/subject/vendor.js"></script>
    <!-- main js  -->
    <script src="${path}/asset/js/subject/main.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>

</html>