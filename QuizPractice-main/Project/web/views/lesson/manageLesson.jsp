<%-- 
    Document   : manageSubject
    Created on : Oct 24, 2021, 1:12:19 AM
    Author     : hieu phan
--%>

<%@page import="Enitity.Topic"%>
<%@page import="Enitity.Lesson"%>
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
        <link
            rel="apple-touch-icon"
            sizes="180x180"
            href="${path}/asset/img/logo/apple-touch-icon.png"
            />
        <link
            rel="icon"
            type="image/png"
            sizes="32x32"
            href="${path}/asset/img/logo/favicon-32x32.png"
            />
        <link
            rel="icon"
            type="image/png"
            sizes="16x16"
            href="${path}/asset/img/logo/favicon-16x16.png"
            />
        <link rel="manifest" href="${path}/asset/img/logo/site.webmanifest" />
        <!-- Font Awesome icons (free version)-->
        <script
            src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
            crossorigin="anonymous"
        ></script>
        <!-- Google fonts-->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
            rel="stylesheet"
            />
        <link
            href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800&display=swap"
            rel="stylesheet"
            />
        <!-- CSS asset (includes Bootstrap)-->
        <link rel="stylesheet" href="${path}/asset/css/reset.css" />
        <link
            href="${path}/asset/bootstrap/css/bootstrap.min.css"
            rel="stylesheet"
            />
        <!-- Stylesheet -->
<!--        <link rel="stylesheet" href="${path}/asset/css/subject/vendor.css">-->
        <!--<link rel="stylesheet" href="${path}/asset/css/subject/style.css">-->
        <link rel="stylesheet" href="${path}/asset/css/subject/responsive.css">
        <link rel="stylesheet" href="${path}/asset/css/subject/color-blue.css">

        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.css">

        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>
    </head>

    <body>
        <%

            List<Lesson> lessons = (List<Lesson>) request.getAttribute("lessons");
            List<Topic> topics = (List<Topic>) request.getAttribute("topics");
            Subject s = (Subject) request.getAttribute("subject");
            session.setAttribute("subject", s);
        %>
        <jsp:include page="/views/nav.jsp"></jsp:include>
            <div class="container content" style="margin-top: 100px;">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb" style="font-size: 20px; background-color: #E2E8F0;">
                        <li class="breadcrumb-item"><a href="SubjectController">Manage Subject</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><%=s.getName()%></li>
                </ol>
            </nav>
            <!-- Content Row -->
            <h2 style="display: inline-block;">Manage Lesson</h2>
            <button data-toggle="modal" data-target="#addTopic" class="btn btn-info" style="display: inline-block; float: right; margin-left: 5px;">Add New Topic</button>
            <button data-toggle="modal" data-target="#addLesson" class="btn btn-info" style="display: inline-block; float: right;">Add New Lesson</button>
            <!-- Modal -->
            <div class="modal fade" id="addTopic" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="manageLesson?action=addTopic" method="POST">
                            <div class="modal-body">
                                <div class="form-group row">
                                    <label for="topicName" class="col-sm-2 col-form-label">Topic Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="topicName" required class="form-control" id="topicName">
                                    </div>
                                </div><br>
                            </div>
                            <input type="text" name="s_id" value="<%=s.getS_id()%>" required class="form-control d-none" id="s_id">
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Add New Topic</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- add lesson modal -->
            <div class="modal fade" id="addLesson" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <form action='manageLesson?action=addLesson' method="POST">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Add New Lesson</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">

                                <div class="form-group row">
                                    <label for="addLessonName" class="col-sm-2 col-form-label">Lesson Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="addLessonName" required class="form-control" id="addLessonName">
                                    </div>
                                </div><br>
                                <div class="form-group row">
                                    <label for="addLessonTopic" class="col-sm-2 col-form-label">Topic</label>
                                    <div class="col-sm-10">
                                        <select name="addLessonTopic" required class="form-control" id="addLessonTopic" placeholder="Subject Type">
                                            <% for (Topic t : topics) { %>
                                            
                                            <option value="<%=t.getTopic_id()%>" ><%=t.getName()%></option>
                                            <% }%>
                                        </select>
                                    </div>
                                </div><br>
                                <div class="form-group row">
                                    <label for="addLessonDes" class="col-sm-2 col-form-label">Lesson Description</label>
                                    <div class="col-sm-10">
                                        <textarea style='height: 200px;' type="text" name="addLessonDes" required class="form-control" id="addLessonDes" placeholder="Lesson Description"></textarea>
                                    </div>
                                </div>
                                <br>
                                <div class="form-group row">
                                    <label for="addLessonContent" class="col-sm-2 col-form-label">Lesson Content</label>
                                    <div class="col-sm-10">
                                        <textarea style='height: 200px;' type="text" name="addLessonContent" required class="form-control" id="addLessonContent" placeholder="Lesson Description"></textarea>
                                    </div>
                                </div>
                                <br>
                                <div class="input-group mb-3">

                                    <input name="addLessonVideo" id="addLessonVideo" type="text" class="form-control" placeholder="Video Url" aria-label="Video Url" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button">Video URL</button>
                                    </div>
                                </div>
                                <div class="input-group mb-3">

                                    <input name="addLessonImage" id="addLessonImage" type="text" class="form-control" placeholder="Image Url" aria-label="Image Url" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button">Image URL</button>
                                    </div>
                                </div>
                                <div class="input-group mb-3">

                                    <input name="addLessonRef" id="addLessonRef" type="text" class="form-control" placeholder="Ref Url" aria-label="Ref Url" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button">Ref URL</button>
                                    </div>
                                </div>
                                <div class="input-group mb-3">

                                    <input name="addLessonDocuments" id="addLessonDocuments" type="text" class="form-control" placeholder="Doc Url" aria-label="Doc Url" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button">Document URL</button>
                                    </div>
                                </div>
                                <div class="input-group mb-3">

                                    <input name="addNo" id="addNo" type="number" class="form-control" placeholder="Doc Url" required aria-label="Doc Url" aria-describedby="basic-addon2">
                                    <div class="input-group-append">
                                        <button class="btn btn-outline-secondary" type="button">Lesson No.</button>
                                    </div>
                                </div>



                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Add New Lesson</button>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <table id="example" class="display" style="width:100%">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Topic</th>
                        <th>Name</th>
                        <th>Created Time</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Lesson ls : lessons) {
                    %>

                    <tr>
                        <td><%=ls.getNo()%></td>
                        <td><%=ls.getTopicName()%></td>
                        <td><%=ls.getName()%></td>
                        <td><%=ls.getCreatedTime()%></td>
                        <td>
                            <button class="btn btn-success" data-toggle="modal" data-target="#editLesson<%=ls.getL_id()%>">Edit</button> 
                            <button class="btn btn-danger"><a href='manageLesson?action=delete&lessonID=<%=ls.getL_id()%>' style="text-decoration: none; color: white;">Disable</a></button></td>
                <div class="modal fade" id="editLesson<%=ls.getL_id()%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <form action='manageLesson?action=edit' method="POST">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Update Lesson</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">

                                    <div class="form-group row">
                                        <label for="lessonName" class="col-sm-2 col-form-label">Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="lessonName" required class="form-control" id="lessonName" value="<%=ls.getName()%>">
                                        </div>
                                    </div><br>
                                    <div class="form-group row">
                                        <label for="lessonTopic" class="col-sm-2 col-form-label">Topic</label>
                                        <div class="col-sm-10">
                                            <select name="lessonTopic" required class="form-control" id="lessonTopic" placeholder="Subject Type">
                                                <% for (Topic t : topics) { %>
                                                <% if (t.getTopic_id() == ls.getTopic_id()) {%>
                                                <option value="<%=t.getTopic_id()%>" selected><%=t.getName()%></option>
                                                <% } else {%>
                                                <option value="<%=t.getTopic_id()%>" ><%=t.getName()%></option>
                                                <% } %>
                                                <% }%>
                                            </select>
                                        </div>
                                    </div><br>
                                    <div class="form-group row">
                                        <label for="lessonDes" class="col-sm-2 col-form-label">Lesson Description</label>
                                        <div class="col-sm-10">
                                            <textarea style='height: 200px;' type="text" name="lessonDes" value="<%=ls.getDescription()%>" required class="form-control" id="lessonDes" placeholder="Lesson Description"><%=ls.getDescription()%></textarea>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="form-group row">
                                        <label for="lessonContent" class="col-sm-2 col-form-label">Lesson Content</label>
                                        <div class="col-sm-10">
                                            <textarea style='height: 200px;' type="text" name="lessonContent" value="<%=ls.getContent()%>" required class="form-control" id="lessonContent" placeholder="Lesson Description"><%=ls.getContent()%></textarea>
                                        </div>
                                    </div>
                                    <br>
                                    <div class="input-group mb-3">

                                        <input name="lessonVideo" value="<%=ls.getVideo()%>" id="lessonVideo" type="text" class="form-control" placeholder="Video Url" aria-label="Video Url" aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="button">Video URL</button>
                                        </div>
                                    </div>
                                    <div class="input-group mb-3">

                                        <input name="lessonImage" value="<%=ls.getImage()%>" id="lessonImage" type="text" class="form-control" placeholder="Image Url" aria-label="Image Url" aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="button">Image URL</button>
                                        </div>
                                    </div>
                                    <div class="input-group mb-3">

                                        <input name="lessonRef" value="<%=ls.getReferences()%>" id="lessonRef" type="text" class="form-control" placeholder="Ref Url" aria-label="Ref Url" aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="button">Ref URL</button>
                                        </div>
                                    </div>
                                    <div class="input-group mb-3">

                                        <input name="lessonDocuments" value="<%=ls.getDocuments()%>" id="lessonDocuments" type="text" class="form-control" placeholder="Doc Url" aria-label="Doc Url" aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="button">Document URL</button>
                                        </div>
                                    </div>


                                    <input type="text" name="lessonID" value="<%=ls.getL_id()%>"  class="form-control d-none" id="lessonID" >

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
