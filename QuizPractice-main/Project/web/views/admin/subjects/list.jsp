<%-- 
    Document   : list
    Created on : Nov 1, 2021, 9:07:17 AM
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
                </script>
            </head>

            <body>
                <div class="h3 text-center mt-5">List of Subject</div>
                <table class="table table-hover mb-5">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Image</th>
                            <th scope="col">Name</th>
                            <th scope="col">Organization</th>
                            <th scope="col">Options</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:forEach items="${subjectData}" var="subject">
                            <tr>
                                <th scope="col">${subject.s_id}</th>
                                <th scope="col"><img src="${subject.image}" class="rounded-circle rounded-1" alt="${subject.name}" style="width: 7vw;
                                 height: 11vh;"> </th>
                                <th scope="col">${subject.name}</th>
                                <th scope="col">${subject.organization}</th>
                                <th scope="col">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop_subject_${subject.s_id}">
                    View Detail
                </button>
                                    <!-- Modal -->
                                    <div class="modal fade" id="staticBackdrop_subject_${subject.s_id}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="staticBackdropLabel">Full Information Of ${subject.name}</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <form id="form_subject_${subject.s_id}">
                                                        <div class="container-fluid">
                                                            <div class="row">
                                                                <div class="col-3 align-self-center d-flex justify-content-center">
                                                                    <div class="input-group mb-3">
                                                                        <span class="input-group-text" id="basic-addon1">ID</span>
                                                                        <input type="text" readonly class="form-control" value="${subject.s_id}" aria-label="Username" aria-describedby="basic-addon1">
                                                                    </div>
                                                                </div>
                                                                <div class="col-9 align-self-center d-flex justify-content-center">

                                                                    <div class="input-group mb-3">
                                                                        <label class="input-group-text" for="inputGroupSelect01">Status</label>
                                                                        <select class="form-select" id="inputGroupSelect01">
                                                        <c:if test="${subject.status == 0}">
                                                            <option value="0">Disable</option>
                                                        </c:if>
                                                        <c:if test="${subject.status == 1}">
                                                            <option value="1">Active</option>
                                                        </c:if>

                                                    </select>
                                                                    </div>
                                                                </div>

                                                                <div class="input-group mb-3">
                                                                    <label class="input-group-text" for="inputGroupSelect01">FullName</label>
                                                                    <select class="form-select" id="inputGroupSelect01">
                                                                <c:forEach items="${userData}" var="user">
                                                                    <option value="${user.id}"> ${user.firstname} ${user.lastname} </option>
                                                                </c:forEach>
                                                            </select>
                                                                </div>
                                                                <div class="input-group mb-3">
                                                                    <label class="input-group-text" for="inputGroupSelect01">Category</label>
                                                                    <select class="form-select" id="inputGroupSelect01">
                                                                <c:forEach items="${userData}" var="user">
                                                                    <option value="${user.id}"> ${user.firstname} ${user.lastname} </option>
                                                                </c:forEach>
                                                            </select>
                                                                </div>
                                                                <div class="input-group mb-3">
                                                                    <label class="input-group-text" for="inputGroupSelect01">SubCategory</label>
                                                                    <select class="form-select" id="inputGroupSelect01">
                                                                <c:forEach items="${userData}" var="user">
                                                                    <option value="${user.id}"> ${user.firstname} ${user.lastname} </option>
                                                                </c:forEach>
                                                            </select>
                                                                </div>
                                                                <div class="col-6 align-self-center d-flex justify-content-center">
                                                                    <div class="text-center">
                                                                        <img src="${subject.image}" class="img-thumbnail mb-1" alt="${subject.name}">
                                                                        <div class="input-group mb-3">
                                                                            <input type="file" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-6 align-self-center d-flex justify-content-center">
                                                                    <div class="text-center">
                                                                        <img src="${subject.logo}" class="img-thumbnail mb-1" alt="${subject.name}">
                                                                        <div class="input-group mb-3">
                                                                            <input type="file" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </div>


                                                                <div class="input-group mb-3">
                                                                    <span class="input-group-text" id="basic-addon1">Name</span>
                                                                    <input type="text" class="form-control" value="${subject.name}" aria-label="Username" aria-describedby="basic-addon1">
                                                                </div>
                                                                <div class="input-group mb-3">
                                                                    <span class="input-group-text" id="basic-addon1">Organization</span>
                                                                    <input type="text" class="form-control" value="${subject.organization}" aria-label="Username" aria-describedby="basic-addon1">
                                                                </div>
                                                                <div class="input-group mb-3">
                                                                    <span class="input-group-text" id="basic-addon1">Currency Unit</span>
                                                                    <input type="text" class="form-control" value="${subject.currency_unit}" aria-label="Username" aria-describedby="basic-addon1">
                                                                </div>
                                                                <div class="input-group mb-3">
                                                                    <span class="input-group-text" id="basic-addon1">Currency Unit</span>
                                                                    <input type="text" class="form-control" value="${subject.currency_unit}" aria-label="Username" aria-describedby="basic-addon1">
                                                                </div>
                                                                <div class="input-group mb-3">
                                                                    <span class="input-group-text" id="basic-addon1">Currency Unit</span>
                                                                    <input type="text" class="form-control" value="${subject.currency_unit}" aria-label="Username" aria-describedby="basic-addon1">
                                                                </div>
                                                                <div class="input-group mb-3">
                                                                    <span class="input-group-text" id="basic-addon1">Price</span>
                                                                    <input type="text" class="form-control" value="${subject.price}" aria-label="Username" aria-describedby="basic-addon1">
                                                                </div>
                                                                <div class="input-group mb-3">
                                                                    <span class="input-group-text" id="basic-addon1">Discount</span>
                                                                    <input type="text" class="form-control" value="${subject.discount}" aria-label="Username" aria-describedby="basic-addon1">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer">

                                                    <button type="button" value="${subject}" onclick="UpdateSubject(this.value)" class="btn btn-primary saveBtn">Save</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </th>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </body>

            </html>