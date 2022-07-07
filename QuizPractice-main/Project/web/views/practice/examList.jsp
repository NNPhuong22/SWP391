<%-- Document : nav Created on : Sep 23, 2021, 10:02:56 PM Author : VietThang --%>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:set var="path" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="" />
                <meta name="author" content="" />
                <title>Tables - SB Admin</title>
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
                <link rel="stylesheet" href="${path}/asset/bootstrap/css/bootstrap.min.css">
                <link href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" rel="stylesheet" />
                <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css" />
                <link href="${path}/asset/css/practicesList.css" rel="stylesheet" />
                <!--JS-->
                <script src="${path}/asset/js/practicesList.js"></script>
            </head>

            <body>
                <!--Navigation-->
                <jsp:include page="/views/nav.jsp"></jsp:include>
                <!-- Main -->
                <div class="practice__list">
                    <table id="practicesList" class="display nowrap" cellspacing="0" width="100%">
                        <div id='test'></div>
                        <thead>
                            <tr>
                                <th>Subject</th>
                                <th>Level</th>
                                <th>#Questions</th>
                                <th>Duration</th>
                                <th>Pass Rate</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <c:set var="hard" value="h" />
                        <c:set var="medium" value="m" />
                        <tbody>
                            <c:forEach items="${examList}" var="e">
                                <tr>
                                    <td>${e.getS_name()}</td>
                                    <td>
                                        <c:choose>
                                            <c:when test="${e.getLevel() eq hard}">
                                                <p>Hard</p>
                                            </c:when>
                                            <c:when test="${e.getLevel() eq medium}">
                                                <p>Medium</p>
                                            </c:when>
                                            <c:otherwise>
                                                <p>Easy</p>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td>${e.getNumber_of_question()}</td>
                                    <td>${e.getDuration()} second</td>
                                    <td>${e.getPass_rate()}%</td>
                                    <!-- View Details button -->
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#Exam_newQuiz${e.getExam_id()}">
                                            View Details
                                        </button>
                                    </td>

                                    <!-- View Details Modal -->
                                    <div class="modal fade}" id="Exam_newQuiz${e.getExam_id()}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content" id="ExQuizHandle_${e.getExam_id()}">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Exam Details</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row register-form">
                                                        <div class="form-group">
                                                            <label class="form-label" for="subject">Subject: </label>
                                                            <input class="form-control" type="text" id="subject${e.getExam_id()}" name="subject" value="${e.getS_id()}" disabled="disabled" />
                                                            <input class="form-control" type="hidden" id="topic${e.getExam_id()}" name="topic" value="0" disabled="disabled" />
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="form-label" for="level">Level: </label>
                                                            <input class="form-control" id="level${e.getExam_id()}" type="text" value="${e.getLevel()}" disabled="disabled" />
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="form-label" for="quantity">Number of
                                                                Questions: </label>
                                                            <input class="form-control" type="text" id="quantity${e.getExam_id()}" name="quantity" value="${e.getNumber_of_question()}" disabled="disabled" />
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="form-label">Duration: </label>
                                                            <p>${e.getDuration()} second</p>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="form-label">Pass Rate: </label>
                                                            <p>${e.getPass_rate()}%</p>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button onclick="RenderQuizzHandler(this.value,this.id)" id="${e.getExam_id()}" value="ExQuizHandle_${e.getExam_id()}" class="btn btn-primary newQuizBtn">Start Simulation
                                                        Exam</button>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </tr>

                            </c:forEach>
                        </tbody>
                    </table>
                </div>
                <!--Footer-->
                <jsp:include page="/views/footer.jsp"></jsp:include>
                <!--Js-->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"></script>
                <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
                <script src="${path}/asset/bootstrap/js/bootstrap.min.js"></script>
                <script src="${path}/asset/js/practicesList.js"></script>
                <script src="${path}/asset/js/connection.js"></script>
            </body>

            </html>