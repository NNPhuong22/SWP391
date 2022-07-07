<%--
    Document   : home_body
    Created on : Oct 6, 2021, 3:46:23 PM
    Author     : TrungHuy
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

            <c:set var="path" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
                <script>
                    $(".table").DataTable();
                    $("form").change(function() {
                        console.log("Here");
                        $('.saveBtn').removeAttr("disabled");
                    });
                </script>
            </head>

            <body>
                <div class="h3 text-center mt-5">List of User</div>
                <table class="table mb-5">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Avatar</th>
                            <th scope="col">Account</th>
                            <th scope="col">First Name</th>
                            <th scope="col">Last Name</th>
                            <th scope="col">History</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${userData}" var="user">
                            <tr>
                                <td scope="col">${user.id}</td>
                                <td scope="col"><img src="${user.avatar}" class="rounded-circle rounded-1" alt="${user.firstname} ${user.lastname}" style="width: 7vw;
                                             height: 11vh;"> </td>
                                <td scope="col">${user.username}</td>
                                <td scope="col">${user.firstname}</td>
                                <td scope="col">${user.lastname}</td>
                                <td>


                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal_${user.id}">
                                        View
                                    </button>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal_${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel_${user.id}" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel_${user.id}">Login History Detail</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">Time</th>
                                                                <th scope="col">OS</th>
                                                                <th scope="col">Brower</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>

                                                            <c:forEach items="${loginHistoryData}" var="data">
                                                                <c:if test="${data.uid == user.id}">
                                                                    <tr>
                                                                        <td scope="col">${data.date}</td>
                                                                        <td scope="col">${data.OS}</td>
                                                                        <td scope="col">${data.brower}</td>
                                                                    </tr>
                                                                </c:if>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>



                                </td>
                            </tr>

                        </c:forEach>
                    </tbody>
                </table>
            </body>

            </html>