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
            </head>

            <body>
                <!--Navigation-->
                <jsp:include page="/views/nav.jsp"></jsp:include>
                <!-- Main -->
                <div class="practice__list">
                    <h1 class="list_title">Practice List</h1>
                    <div>
                        <!-- New Practice button -->
                        <button type="button" class="btn btn-primary float-right" data-bs-toggle="modal" data-bs-target="#newPractice">
                            New Practice
                        </button>
                        <!-- New Practice modal -->
                        <div class="modal fade  " id="newPractice" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content" id="QuizHandle">

                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">New Practice</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <!-- Form input new practice -->

                                    <div class="modal-body">
                                        <div class="row register-form">
                                            <div class="form-group">
                                                <label for="subject" class="form-label">Subject</label>
                                                <select id="subject" class="form-select form-control" name="subject">
                                                    <option>Select Subject</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="topic" class="form-label">Topic</label>
                                                <select id="topic" class="form-select form-control" name="topic">
                                                    <option>Select Topic</option>
                                                </select>
                                            </div>

                                            <div class="form-group">
                                                <label for="level" class="form-label">Level</label>
                                                <select id="level" class="form-select form-control" name="level">
                                                    <option value="">Random</option>
                                                    <option value="e">Easy</option>
                                                    <option value="m">Medium</option>
                                                    <option value="h">Hard</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label for="quantity" class="form-label">Quantity</label>
                                                <input type="text" name="quantity" id="quantity" class="form-text form-control" placeholder="Non Required">
                                            </div>
                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <button onclick="RenderQuizzHandler(this.value,'')" value="QuizHandle" class="btn btn-primary">Practice</button>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <!-- Simulation Exam  button -->
                        <a type="button" class="btn btn-primary" href="/QuizPractice/examlist">
                            Simulation Exam
                        </a>
                    </div>
                    <table id="practicesList" class="display nowrap" cellspacing="0" width="100%">
                        <div id='test'></div>
                        <thead>
                            <tr>
                                <th>Subject</th>
                                <th>Topic</th>
                                <th>Date Taken</th>
                                <th>Marks / 10.00</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${quizzTotal}" var="q">
                                <tr>
                                    <td>${q.getS_name()}</td>
                                    <td>${q.getTopic_name()}</td>
                                    <td>${q.getTaken_date()}</td>
                                    <td>${q.getScore()}</td>
                                    <!-- View Details button -->
                                    <td>
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#practice${q.getQ_id()}">
                                    View Details
                                </button>
                                    </td>

                                    <!-- View Details Modal -->
                                    <div class="modal fade" id="practice${q.getQ_id()}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Practice Details</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>

                                                <div class="modal-body">
                                                    <div class="row register-form">
                                                        <div class="form-group">
                                                            <label class="form-label">Subject: </label>
                                                            <p>${q.getS_name()}</p>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="form-label">Topic: </label>
                                                            <p>${q.getTopic_name()}</p>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="form-label">Taken Date: </label>
                                                            <p>${q.getTaken_date()}</p>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="form-label">Required Time: </label>
                                                            <p>${q.getRequired_time()}</p>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="form-label">Time: </label>
                                                            <p>${q.getTime()}</p>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="form-label">Score: </label>
                                                            <p>${q.getScore()}</p>
                                                        </div>
                                                        <div id="DetailOf${q.q_id}">

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="submit" onclick="RenderQuizzReview(this.value)" value="${q.q_id}" class="btn btn-primary">Practice
                                                            Review</button>
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
                <script>
                </script>
            </body>

            </html>