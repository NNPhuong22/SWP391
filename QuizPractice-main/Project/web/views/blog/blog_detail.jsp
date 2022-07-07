<%-- 
    Document   : blog_detail
    Created on : Oct 1, 2021, 10:29:15 AM
    Author     : HP
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:set var="path" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Blog Detail</title>
                <link rel="stylesheet" href="${path}/asset/bootstrap/css/bootstrap.min.css">
                <link rel="stylesheet" type="text/css" href="${path}/asset/css/blogStyle.css">
                <script src="${path}/asset/js/connection.js"></script>
            </head>

            <body>
                <!-- Header-->
                <section class="py-3">
                    <div id="header">
                        <jsp:include page="/views/nav.jsp"></jsp:include>
                    </div>
                </section>
                <!-- Page content-->

                <div class="container mt-5">
                    <header class="mb-4 ">
                        <!-- Post title-->
                        <h1 class="fw-bolder mb-1">${b.getTitle()}</h1>
                        <!-- Post meta content-->
                        <div class="text-muted fst-italic mb-2">${b.getDate()}</div>
                        <!-- Post categories-->
                        <a class="badge bg-secondary text-decoration-none link-light" href="#!">${b.getType()}</a>
                    </header>
                    <div class="row">


                        <div class="d-flex align-items-center mt-lg-5 mb-4 col-lg-4">
                            <img class="img-fluid rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." />
                            <div class="ms-3">
                                <div class="fw-bold">${b.getAuthor()}</div>

                            </div>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-lg-8">
                            <!-- Post content-->

                            <article>
                                <!-- Post header-->

                                <!-- Preview image figure-->
                                <figure class="mb-4"><img class="img-fluid rounded" src="${b.getImage()}" alt="..." /></figure>
                                <!-- Post content-->
                                <section class="mb-5">
                                    <p class="fs-5 mb-4">${b.getContent()}</p>

                                </section>
                            </article>
                        </div>
                        <!-- Side widgets-->
                        <div class="col-lg-4">
                            <jsp:include page="/views/blog/blog_sider.jsp"></jsp:include>
                        </div>
                    </div>
                </div>
                <div id="footer">
                    <jsp:include page="/views/footer.jsp"></jsp:include>
                </div>
                <!-- Bootstrap core JS-->
                <script src="${path}/asset/JQuery/JQuery.js"></script>
                <script src="http://code.jquery.com/jquery-latest.min.js"></script>
            </body>

            </html>