<%-- Document : nav Created on : Sep 23, 2021, 10:02:56 PM Author : VietThang --%>
    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:set var="path" value="${pageContext.request.contextPath}" />

            <!DOCTYPE html>
            <html lang="en">

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
                <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
                    rel="stylesheet" />
                <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800&display=swap"
                    rel="stylesheet" />
                <!-- CSS asset (includes Bootstrap)-->
                <link rel="stylesheet" href="${path}/asset/css/reset.css" />
                <link href="${path}/asset/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
                <!-- CSS slick-->
                <link rel="stylesheet" type="text/css" href="${path}/asset/css/slick.css" />
                <!-- CSS Core-->
                <link rel="stylesheet" href="${path}/asset/css/homepage.css" />
            </head>

            <body>
                <!--Navigation-->
                <jsp:include page="/views/nav.jsp"></jsp:include>
                <!--Masthead-->
                <header class="masthead">
                    <div class="container">
                        <div class="masthead-heading text-uppercase">Welcome To Ezuni</div>
                        <div class="masthead-subheading text-uppercase">
                            Online learning system with thousands of quality courses
                        </div>
                        <a class="bt btn-color btn-xl text-uppercase" href="/QuizPractice/SubjectController">Show Me
                            More</a>
                    </div>
                </header>
                <!--Portfolio-->
                <section class="portfolio">
                    <!--Recommended Subject-->
                    <div class="portfolio-category">
                        <h2 class="portfolio-title">Lastest</h2>
                        <ul class="portfolio-list">
                            <c:forEach items="${sjtLatestDisplayList}" var="s">
                                <li class="portfolio-item">
                                    <div class="thumb">
                                        <img class="sjt-img" src=${s.getImage()} alt="subject_image" />
                                    </div>
                                    <div class="sjt-info">
                                        <div class="sjt-name">${s.getName()}</div>
                                        <div class="sjt-des">
                                            <div class="sjt-gnr">
                                                <p>${s.getInstructor_first_name()} ${s.getInstructor_last_name()}</p>
                                                <p>${s.getPrice()} ${s.getCurrency_unit()}</p>
                                            </div>
                                            <a type="button" class="sjt-btn text-uppercase"
                                                href="SubjectDetail?subID=${s.getS_id()}">View</a>
                                        </div>
                                    </div>
                                </li>

                            </c:forEach>
                        </ul>
                    </div>
                    <!--Popular Subject-->
                    <div class="portfolio-category">
                        <h2 class="portfolio-title">Recommended</h2>
                        <ul class="portfolio-list">
                            <c:forEach items="${sjtRecommenedDisplayList}" var="s">
                                <li class="portfolio-item">
                                    <div class="thumb">
                                        <img class="sjt-img" src=${s.getImage()} alt="subject_image" />
                                    </div>
                                    <div class="sjt-info">
                                        <div class="sjt-name">${s.getName()}</div>
                                        <div class="sjt-des">
                                            <div class="sjt-gnr">
                                                <p>${s.getInstructor_first_name()} ${s.getInstructor_last_name()}</p>
                                                <p>${s.getPrice()} ${s.getCurrency_unit()}</p>
                                            </div>
                                            <a type="button" class="sjt-btn text-uppercase"
                                                href="SubjectDetail?subID=${s.getS_id()}">View</a>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                    </div>
                    <!--Teacher-->
                    <div class="instructor-category">
                        <h2 class="portfolio-title">Instructors</h2>
                        <ul class="instructor-list">
                            <c:forEach items="${expertDisplayList}" var="e">
                                <li class="instructor-item">
                                    <a class="instructor-detail">
                                        <img src="${e.getAvatar()}" data-toggle="modal"
                                            data-target="#subject${e.getId()}" alt="instructor_img"
                                            class="instructor-img">
                                        <!--<a type="button" data-toggle="modal" data-target="#subject${e.getId()}"><img src=${e.getAvatar()} alt="instructor_img" class="instructor-img"></a>-->
                                        <!--<div class="instructor-name">${e.getFirstname()} ${e.getLastname()}</div>-->
                                        <div class="instructor-name"><a type="button" data-toggle="modal"
                                                data-target="#subject${e.getId()}">${e.getFirstname()}
                                                ${e.getLastname()}</a></div>
                                    </a>
                                </li>
                                <!--Modal-->
                                <div class="modal fade" id="subject${e.getId()}" tabindex="-1" role="dialog"
                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Instructor Information
                                                </h5>
                                                <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <img src="${e.getAvatar()}" alt="img">
                                                <h1> ${e.getFirstname()} ${e.getLastname()} </h1>
                                                <p style="color: green; font-style: italic;"> ${e.getEmail()} </p>
                                                <p> ${e.getDescription()} </p>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                    data-dismiss="modal">Close</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </ul>
                    </div>
                    <!-- Blog preview section-->
                    <div class="container my-5">
                        <div class="row gx-5" style="width:100%; margin-bottom: 10px;">
                            <div class="col-lg-8 col-xl-6">
                                <div class="pull-left">
                                    <h3 class="fw-bolder">From our blog</h3>
                                </div>
                                
                            </div>
                            <div class="col-lg-8 col-xl-6">
                                <div>
                                    <a class="btn btn-color btn-xl text-uppercase" style="float: right;" href="BlogList">Show Me More</a>
                                </div>
                            </div>
                        </div>
                        <div class="row gx-5">
                            <c:forEach items="${blogDisplayList}" var="o">
                                <div class="col-lg-4 mb-5">
                                    <div class="card h-100 shadow border-0">
                                        <img class="card-img-top" id="card-img-blog" src=${o.getImage()}
                                            alt="Blog Image" />
                                        <div class="card-body p-4">
                                            <div class="badge bg-primary bg-gradient rounded-pill mb-2">${o.getType()}
                                            </div>
                                            <a class="text-decoration-none link-dark stretched-link"
                                                href="BlogDetail?bid=${o.getId()}">
                                                <h5 class="card-title mb-3">${o.getTitle()}</h5>
                                            </a>
                                            <p class="card-text mb-0">${o.getDescription()}</p>
                                        </div>
                                        <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                            <div class="d-flex align-items-end justify-content-between">
                                                <div class="d-flex align-items-center">
                                                    <img class="rounded-circle me-3"
                                                        src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
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
                </section>


                <!--Footer-->
                <jsp:include page="/views/footer.jsp"></jsp:include>

                <!-- Js asset -->
                <script src="${path}/asset/JQuery/JQuery.js"></script>
                <script src="${path}/asset/js/subject/vendor.js"></script>
                <script src="${path}/asset/js/subject/main.js"></script>
                <script type="text/javascript" src="${path}/asset/js/slick.min.js"></script>
                <!-- Js Core-->
                <script src="${path}/asset/js/homepage.js"></script>
                <script src="${path}/asset/js/connection.js"></script>

            </body>

            </html>