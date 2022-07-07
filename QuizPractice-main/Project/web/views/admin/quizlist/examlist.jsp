<%-- Document : nav Created on : Sep 23, 2021, 10:02:56 PM Author : VietThang --%>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:set var="path" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <script>
                    $(".table").DataTable();
                </script>
            </head>

            <body>
                <!-- Main -->
                <div class="container">
                    <div class="text-center">
                        <h2>Exam Manager</h2>
                    </div>
                    <div class="admin_exam">
                        <!-- Add Exam Button -->
                        <button type="button" class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#addModal">
                            Add new exam
                        </button>
                        <!-- Table -->
                        <table class="display nowrap table" cellspacing="0" width="100%">
                            <div id='test'></div>
                            <thead>
                                <tr>
                                    <th>Subject</th>
                                    <th>Level</th>
                                    <th>#Questions</th>
                                    <th>Duration (second)</th>
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
                                                    Hard
                                                </c:when>
                                                <c:when test="${e.getLevel() eq medium}">
                                                    Medium
                                                </c:when>
                                                <c:otherwise>
                                                    Easy
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>${e.getNumber_of_question()}</td>
                                        <td>${e.getDuration()}</td>
                                        <td>${e.getPass_rate()}%</td>
                                        <!-- Action button -->
                                        <td>
                                            <button type="button" class="btn btn-primary list_view"
                                                data-bs-toggle="modal" data-bs-target="#viewExam_${e.getExam_id()}">
                                                <i class="far fa-eye"></i>
                                            </button>
                                            <button type="button" class="btn btn-primary list_edit"
                                                data-bs-toggle="modal" data-bs-target="#editExam_${e.getExam_id()}">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                            <c:if test="${e.getStatus() eq 0}">
                                                <button type="button" class="btn btn-primary list_active"
                                                    value="${e.getExam_id()}" onclick="ActiveExam(this.value)"
                                                    title="Enable/Disable the test makes it possible/unable for the customer to see the test. If you want to delete the test completely, go to Edit -> Delete ">
                                                    <i class="fas fa-plus-square"></i>
                                                </button>
                                            </c:if>
                                            <c:if test="${e.getStatus() eq 1}">
                                                <button type="button" class="btn btn-primary list_deactive"
                                                    value="${e.getExam_id()}" onclick="DeactiveExam(this.value)"
                                                    title="Enable/Disable the test makes it possible/unable for the customer to see the test. If you want to delete the test completely, go to Edit -> Delete ">
                                                    <i class="fas fa-minus-square"></i>
                                                </button>
                                            </c:if>

                                        </td>

                                        <!-- View Details Modal -->
                                        <div class="modal fade" id="viewExam_${e.getExam_id()}" tabindex="-1"
                                            aria-labelledby="viewExamLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header" id="viewExamLabel">
                                                        <h5 class="modal-title">Exam Details
                                                        </h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row register-form">
                                                            <div class="form-group">
                                                                <label class="form-label" for="subject">Subject:
                                                                </label>
                                                                <input class="form-control" type="text"
                                                                    id="subject${e.getExam_id()}" name="subject"
                                                                    value="${e.getS_name()}" disabled="disabled" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="form-label" for="level">Level: </label>
                                                                <input class="form-control" id="level${e.getExam_id()}"
                                                                    type="text" value=<c:choose>
                                                                <c:when test="${e.getLevel() eq hard}">
                                                                    Hard
                                                                </c:when>
                                                                <c:when test="${e.getLevel() eq medium}">
                                                                    Medium
                                                                </c:when>
                                                                <c:otherwise>
                                                                    Easy
                                                                </c:otherwise>
                                                                </c:choose>
                                                                disabled="disabled" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="form-label" for="quantity">Number of
                                                                    Questions: </label>
                                                                <input class="form-control" type="text"
                                                                    id="quantity${e.getExam_id()}" name="quantity"
                                                                    value="${e.getNumber_of_question()}"
                                                                    disabled="disabled" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="form-label">Duration: </label>
                                                                <input class="form-control" type="text"
                                                                    id="duration${e.getExam_id()}"
                                                                    value="${e.getDuration()} second"
                                                                    disabled="disabled" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="form-label">Pass Rate: </label>
                                                                <input class="form-control" type="text"
                                                                    id="passrate${e.getExam_id()}"
                                                                    value="${e.getPass_rate()}%" disabled="disabled" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="form-label">Status: </label>
                                                                <c:if test="${e.getStatus() eq 1}">
                                                                    <!-- <div class="admin_status-active"> -->
                                                                    <i class="fas fa-check-circle"></i>
                                                                    <!-- </div> -->
                                                                </c:if>
                                                                <c:if test="${e.getStatus() ne 1}">
                                                                    <!-- <div class="admin_status-deactive"> -->
                                                                    <i class="fas fa-times-circle"></i>
                                                                    <!-- </div> -->
                                                                </c:if>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="form-label">Created Date: </label>
                                                                <input class="form-control" type="text"
                                                                    id="createdDate${e.getExam_id()}"
                                                                    value="${e.getCreated_date()}"
                                                                    disabled="disabled" />
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="form-label">Creator: </label>
                                                                <input class="form-control" type="text"
                                                                    id="userName${e.getExam_id()}"
                                                                    value="${e.getFirst_name()} ${e.getLast_name()}"
                                                                    disabled="disabled" />
                                                            </div>

                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Edit Exam Modal -->
                                        <div class="modal fade" id="editExam_${e.getExam_id()}" tabindex="-1"
                                            aria-labelledby="editExamLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">

                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="editExamLabel">Edit Exam</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <div class="row register-form">
                                                            <input id="id${e.getExam_id()}" type="text"
                                                                name="examId_${e}" value="${e.getExam_id()}" hidden>
                                                            <input type="text" name="type_${e}" value="edit" hidden>
                                                            <input type="text" name="uId_${e}" value="1" hidden>
                                                            <input type="text" name="status_${e}"
                                                                value="${e.getStatus()}" hidden>
                                                            <div class="form-group">
                                                                <label class="form-label">Subject:
                                                                </label>
                                                                <select name="sId_${e}" class="form-select form-control"
                                                                    id="subject${e.getExam_id()}"
                                                                    aria-label="Select Subject" required>
                                                                    <c:forEach items="${sjtList}" var="s">
                                                                        <c:if test="${s.getS_id() eq e.getS_id()}">
                                                                            <option value="${s.getS_id()}"
                                                                                selected="selected">${s.getName()}
                                                                            </option>
                                                                        </c:if>
                                                                        <c:if test="${s.getS_id() ne e.getS_id()}">
                                                                            <option value="${s.getS_id()}">
                                                                                ${l.getName()}</option>
                                                                        </c:if>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Level</label>
                                                                <select name="level_${e}"
                                                                    class="form-select form-control"
                                                                    id="level${e.getExam_id()}"
                                                                    aria-label="Select Level" required>
                                                                    <option value="e">Easy</option>
                                                                    <option value="m" selected="selected">Medium
                                                                    </option>
                                                                    <option value="h">Hard</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Number of Questions (max 50):</label>
                                                                <input type="number" id="quanity${e.getExam_id()}"
                                                                    min="10" max="50" class="form-control"
                                                                    name="numberOfQuestion_${e}"
                                                                    value="${e.getNumber_of_question()}" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Duration(second):</label>
                                                                <input type="number" id="duration${e.getExam_id()}"
                                                                    value="${e.getDuration()}" class="form-control"
                                                                    name="duration_${e}" min="300" max="9999" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Pass rate(%)</label>
                                                                <input type="number" id="passrate${e.getExam_id()}"
                                                                    value="${e.getPass_rate()}" class="form-control"
                                                                    name="passrate_${e}" min="0" max="100" required>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-primary list_delete"
                                                            value="${e.getExam_id()}"
                                                            onclick="DeleteExam(this.value)">
                                                            Delete
                                                        </button>
                                                        <input type="button" class="btn btn-default"
                                                            data-bs-dismiss="modal" value="Cancel">
                                                        <button type="button" class="btn btn-primary" value="${e}"
                                                            onclick="UpdateExam(this.value)">Edit</button>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- Add Exam Modal -->
                <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addExamLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="ExamManageController" method="post">
                                <div class="modal-header">
                                    <h5 class="modal-title text-center" id="addExamLabel">Add a new exam</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <input type="text" name="type" value="add" hidden>
                                    <input type="text" name="examId" value="${examList.get(0).getExam_id()+1}" hidden>
                                    <!-- <input type="text" name="uId" value="${user.getId()}" hidden> -->
                                    <input type="text" name="uId" value="1" hidden>
                                    <div class="form-group">
                                        <label>Subject</label>
                                        <select name="sId" class="form-select" aria-label="Select Subject" required>
                                            <c:forEach items="${sjtList}" var="s">
                                                <option value="${s.getS_id()}">${s.getName()}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Level</label>
                                        <select name="level" class="form-select" aria-label="Default select example"
                                            required>
                                            <option value="e">Easy</option>
                                            <option value="m">Medium</option>
                                            <option value="h">Hard</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Number of Questions (max 50)</label>
                                        <input type="number" min="10" max="50" class="form-control"
                                            name="numberOfQuestion" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Duration(second)</label>
                                        <input type="number" class="form-control" name="duration" min="300" max="9999"
                                            required>
                                    </div>
                                    <div class="form-group">
                                        <label>Passrate(%)</label>
                                        <input type="number" class="form-control" name="passrate" min="0" max="100"
                                            required>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <input type="button" class="btn btn-default" data-bs-dismiss="modal" value="Cancel">
                                    <input type="submit" class="btn btn-success" value="Add">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!--Js-->



            </body>

            </html>