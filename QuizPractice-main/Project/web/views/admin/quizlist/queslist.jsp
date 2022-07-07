<%-- Document : nav Created on : Sep 23, 2021, 10:02:56 PM Author : VietThang --%>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:set var="path" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <script>
                    $(".table").DataTable({
                        "responsive": true,
                        "ordering": false,
                        'columnDefs': [
                            {
                                'targets': [1, 2], // target columns are 0, 1 and 2 for example
                                'render': function (data, type, full, meta) {
                                    if (type === 'display') {
                                        data = typeof data === 'string' && data.length > 80 ? data.substring(0, 80) + '...' : data;
                                    }

                                    return data;
                                }
                            }
                        ],
                    });
                </script>
            </head>

            <body>
                <!-- Main -->
                <div class="container">
                    <div class="text-center">
                        <h2>Question Manager</h2>
                    </div>
                    <div class="admin_ques">
                        <button type="button" class="btn btn-primary mb-3" data-bs-toggle="modal"
                            data-bs-target="#addModal">
                            Add new question
                        </button>
                        <table class="display nowrap table">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Lesson</th>
                                    <th>Question</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <c:set var="hard" value="h" />
                            <c:set var="medium" value="m" />
                            <tbody>
                                <c:forEach items="${quesList}" var="q">
                                    <tr>
                                        <td>${q.getId()}</td>
                                        <td>${q.getLessonName()}</td>
                                        <td>${q.getContent()}</td>
                                        <td>
                                            <button type="button" class="btn btn-primary list_edit"
                                                data-bs-toggle="modal" data-bs-target="#editModal_${q.getId()}">
                                                <i class="fas fa-edit"></i>
                                            </button>

                                        </td>
                                        <!--Edit Question -->
                                        <div class="modal fade" id="editModal_${q.getId()}" tabindex="-1"
                                            aria-labelledby="editModalLabel" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title text-center" id="exampleModalLabel">
                                                            Edit question</h5>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                            aria-label="Close"></button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form id="editExam_${q.getId()}">
                                                            <input id="id_${q.getId()}" type="text" name="id_${q}"
                                                                value="${q.getId()}" hidden>
                                                            <input type="text" name="type_${q}" value="edit" hidden>
                                                            <div class="form-group">
                                                                <label>Lesson</label>
                                                                <select id="lessonId_${q.getId()}" name="lessonId_${q}"
                                                                    class="form-select"
                                                                    aria-label="Default select example">
                                                                    <c:forEach items="${lessonList}" var="l">
                                                                        <c:if test="${l.getL_id() eq q.getLessonId()}">
                                                                            <option value="${l.getL_id()}"
                                                                                selected="selected">${l.getName()}
                                                                            </option>
                                                                        </c:if>
                                                                        <c:if test="${l.getL_id() ne q.getLessonId()}">
                                                                            <option value="${l.getL_id()}">
                                                                                ${l.getName()}</option>
                                                                        </c:if>
                                                                    </c:forEach>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Question</label>
                                                                <input id="content_${q.getId()}" type="text"
                                                                    class="form-control" value="${q.getContent()}"
                                                                    name="content_${q}" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Answer</label>
                                                                <input id="answer_${q.getId()}" type="text"
                                                                    class="form-control" value="${q.getAnswer()}"
                                                                    name="answer_${q}" required>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Other choice options (doesn't match the
                                                                    answer)</label>
                                                                <c:forEach items="${q.getOptions()}" var="opt"
                                                                    varStatus="loop">
                                                                    <c:if test="${opt eq q.getAnswer()}">
                                                                        <div class="ques_option">
                                                                            <input name="ot${loop.index}_${q}"
                                                                                type="text" class="form-control"
                                                                                value="${opt}" hidden>
                                                                        </div>
                                                                    </c:if>
                                                                    <c:if test="${opt ne q.getAnswer()}">
                                                                        <div class="ques_option">
                                                                            <i class="fas fa-circle opt_dot"></i><input
                                                                                name="ot${loop.index}_${q}" type="text"
                                                                                class="form-control" value="${opt}">
                                                                        </div>
                                                                    </c:if>
                                                                </c:forEach>

                                                            </div>
                                                            <div class="form-group">
                                                                <label>Level</label>
                                                                <select id="type_${q.getId()}" name="level_${q}"
                                                                    class="form-select" value="${q.getType()}"
                                                                    aria-label="Default select example" required>
                                                                    <option value="e">Easy</option>
                                                                    <option value="m">Medium</option>
                                                                    <option value="h">Hard</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Description</label>
                                                                <textarea id="description_${q.getId()}" rows="5"
                                                                    cols="50" value="${q.getDescription()}"
                                                                    name="description_${q}"></textarea>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Image</label>
                                                                <input id="image_${q.getId()}" type="text"
                                                                    class="form-control" value="${q.getImage()}"
                                                                    name="image_${q}">
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div class="modal-footer">

                                                        <input type="button" class="btn btn-default"
                                                            data-bs-dismiss="modal" value="Cancel">
                                                        <button type="button" value="${q}"
                                                            onclick="UpdateQuestion(this.value)"
                                                            class="btn btn-primary">Edit</button>
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
                <!--Add Question -->
                <div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form action="QuestionManageController" method="post">
                                <div class="modal-header">
                                    <h5 class="modal-title text-center" id="addModalLabel">Add a new question</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <input type="text" name="type" value="add" hidden>
                                    <input type="text" name="id" value="${quesList.get(0).getId()+1}" hidden>
                                    <div class="form-group">
                                        <label>Lesson</label>
                                        <select name="lessonId" class="form-select" aria-label="Default select example">
                                            <c:forEach items="${lessonList}" var="l">
                                                <option value="${l.getL_id()}">${l.getName()}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Question</label>
                                        <input type="text" class="form-control" name="content" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Answer</label>
                                        <input type="text" class="form-control" name="answer" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Other choice options (doesn't match the answer) </label>
                                        <div class="ques_option">
                                            <i class="fas fa-circle opt_dot"></i><input type="text" class="form-control"
                                                name="ot1">
                                        </div>
                                        <div class="ques_option">
                                            <i class="fas fa-circle opt_dot"></i><input type="text" class="form-control"
                                                name="ot2">
                                        </div>
                                        <div class="ques_option">
                                            <i class="fas fa-circle opt_dot"></i><input type="text" class="form-control"
                                                name="ot3">
                                        </div>
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
                                        <label>Description</label>
                                        <textarea rows="5" cols="50" name="description"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Image</label>
                                        <input type="text" class="form-control" name="image">
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