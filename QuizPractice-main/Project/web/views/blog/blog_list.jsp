<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:set var="path" value="${pageContext.request.contextPath}" />
        <!DOCTYPE html>

        <head>
            <meta charset="UTF-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Ezuni - Online Education System</title>
            <script src="${path}/asset/js/connection.js"></script>
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
            <!-- CSS -->
            <link rel="stylesheet" href="${path}/asset/bootstrap/css/bootstrap.min.css">
            <link rel="stylesheet" type="text/css" href="${path}/asset/css/blogStyle.css">
        </head>

        <body>
            <section class="py-5">
                <div id="header">
                    <jsp:include page="/views/nav.jsp"></jsp:include>
                </div>
            </section>
            <!-- Page content-->
            <div class="container mt-5">
                <h2 class="fw-bolder fs-5 mb-4">Blog List</h2>
                <div class="row">
                    <!-- Blog entries-->
                    <div class="col-lg-8">
                        <!-- Featured blog post-->

                        <!-- Nested row for non-featured blog posts-->
                        <div class="row">
                            <c:forEach items="${bl}" var="o">
                                <div class="col-lg-6 mb-3">
                                    <!-- Blog post-->
                                    <div class="card h-100 shadow border-0">
                                        <img class="card-img-top" id="card-img-blog" src=${o.getImage()} alt="..." />
                                        <div class="card-body p-4">
                                            <div class="badge bg-primary bg-gradient rounded-pill mb-2">${o.getType()}</div>
                                            <a class="text-decoration-none link-dark stretched-link" href="BlogDetail?bid=${o.getId()}">
                                                <div class="h5 card-title mb-3">${o.getTitle()}</div>
                                            </a>
                                            <p class="card-text mb-0">${o.getDescription()}</p>
                                        </div>
                                        <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                            <div class="d-flex align-items-end justify-content-between">
                                                <div class="d-flex align-items-center">
                                                    <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                                                    <div class="small">
                                                        <div class="fw-bold">${o.getAuthor()}</div>
                                                        <div class="text-muted">${o.getDate()}</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <!-- Side widgets-->
                    <div class="col-lg-4">
                        <jsp:include page="/views/blog/blog_sider.jsp"></jsp:include>
                    </div>
                </div>
            </div>
            <!-- Footer-->
            <div id="footer">
                <jsp:include page="/views/footer.jsp"></jsp:include>
            </div>
            <!-- Bootstrap core JS-->
            <script src="${path}/asset/JQuery/JQuery.js"></script>
            <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        </body>

        </html>