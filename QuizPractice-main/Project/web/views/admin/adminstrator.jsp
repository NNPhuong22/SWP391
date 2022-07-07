<%--
    Document   : admin
    Created on : Sep 23, 2021, 10:02:56 PM
    Author     : TrungHuy
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
        <!-- ========================== css ================================= -->
        <!-- Reset -->
        <link rel="stylesheet" href="${path}/asset/css/reset.css" />
        <!--Bootstrap CSS-->
        <link href=" ${path}/asset/bootstrap/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
        <!-- Datatable CSS-->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
        <!--MyCSS-->
        <link rel="stylesheet" href="${path}/asset/css/adminList.css" />
        <link rel="stylesheet" href="${path}/asset/css/adminStyle.css" />

        <!-- ============================ Js ============================ -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
        <!-- Jquery JS -->
        <script src="${path}/asset/JQuery/JQuery.js"></script>
        <!-- Chart JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.5.1/chart.min.js"></script>
        <!-- Datatable JS -->
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.js"></script>
    </head>

    <body>
        <!-- ------------------------------------------------------------------ -->
        <!-- Porototype -->
        <!-- <div class="container-fluid">

<div class="row">

<div class="col-2">

    <div class="">
        <a class="logo" href="/QuizPractice/home" target="_blank"> <img class="logo_img mt-3 mb-4" src="${path}/asset/img/logo/ezuni_5.png" alt="Ezuni_logo" /></a>
        </a>

        <ul class="list-unstyled ps-0">
            <li class="mb-1">
                <button class="btn btn-toggle align-items-center rounded collapsed"
                    data-bs-toggle="collapse" data-bs-target="#dashboard-collapse"
                    aria-expanded="false">
                    Dashboard
                </button>
                <div class="collapse show" id="dashboard-collapse">
                    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                        <li><a onclick="RenderDashBroad('Overview')"
                                class="link-dark rounded">Overview</a></li>
                        <li><a onclick="RenderDashBroad('Monthly')"
                                class="link-dark rounded">Monthly</a></li>
                        <li><a onclick="RenderDashBroad('Weekly')"
                                class="link-dark rounded">Weekly</a></li>
                        <li><a onclick="RenderDashBroad('Daily')"
                                class="link-dark rounded">Daily</a></li>
                    </ul>
                </div>
            </li>
            <li class="mb-1">
                <button class="btn btn-toggle align-items-center rounded"
                    data-bs-toggle="collapse" data-bs-target="#Quizzes-collapse"
                    aria-expanded="true">
                    Quizzes
                </button>
                <div class="collapse" id="Quizzes-collapse">
                    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                        <li><a onclick="RenderExamList()" class="link-dark rounded">Exam
                                List</a></li>
                        <li><a onclick="RenderQuestionList()" class="link-dark rounded">Question
                                List</a></li>
                    </ul>
                </div>
            </li>
            <li class="mb-1">
                <button class="btn btn-toggle align-items-center rounded"
                    data-bs-toggle="collapse" data-bs-target="#Users-collapse"
                    aria-expanded="true">
                    Users
                </button>
                <div class="collapse" id="Users-collapse">
                    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                        <li><a onclick="RenderUserList()" class="link-dark rounded">User List</a></li>
                        <li><a onclick="RenderLoginHistory()" class="link-dark rounded">Login History</a></li>
                    </ul>
                </div>
            </li>
            <li class="mb-1">
                <button class="btn btn-toggle align-items-center rounded"
                    data-bs-toggle="collapse" data-bs-target="#Subjects-collapse"
                    aria-expanded="true">
                    Subjects
                </button>
                <div class="collapse" id="Subjects-collapse">
                    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                        <li><a onclick="RenderSubjectList()" class="link-dark rounded">Subject List</a></li>

                        <li><a onclick="RenderQuestionList()" class="link-dark rounded">Login History</a></li>
                    </ul>
                </div>
            </li>
            <li class="border-top my-3"></li>
            <li class="mb-1">

                <button class="btn btn-toggle align-items-center rounded collapsed"
                    data-bs-toggle="collapse" data-bs-target="#account-collapse"
                    aria-expanded="false">
                    <p type="button" class="btn btn-infor position-relative">
                        Show Notification
                        <span
                            class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
        ${dataNotify.size()}
        <span class="visually-hidden">unread messages</span>
    </span>
</p>
</button>
<div class="collapse show" id="account-collapse">
<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small" id="notify"
    style="overflow: auto; height: 60vh;">
        <c:forEach items="${dataNotify}" var="no">
            <li>
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Notification number: ${no.id} <br>${no.title} </h5>

                        <h6 class="card-subtitle mb-2 text-muted"> Time:${no.time} </h6>
                        <p class="card-text"> ${no.des} </p>

                    </div>
                </div>
            </li>
        </c:forEach>
    </ul>
</div>
</li>
</ul>
</div>
</div>
<div class="col-9">
<div class="container">

<section id="body">

</section>
</div>
</div>
<div class="col-1" style="overflow: auto; height: 100vh;">
        <c:forEach items="${dataList}" var="item">
            <div class="mt-4 justify-content-center">
                <div class="card h-100 shadow bg-body rounded">
                    <figure class="text-center mb-3">
                        <blockquote class="blockquote">
                            <p>All Of ${item.key}</p>
                        </blockquote>
                        <figcaption class="blockquote-footer">
                            Display ${param.type} Of ${item.key}<cite title="Source Title"></cite>
                        </figcaption>
                    </figure>
                    <div id="carouselExampleControls_${item.key}" class="carousel slide"
                        data-bs-ride="carousel">
                        <div class="carousel-inner">

            <c:forEach items="${item.value}" var="i" begin="0" end="9" step="1">
                <c:choose>
                    <c:when test="${item.key == 'User'}">
                        <c:choose>
                            <c:when test="${i == item.value.get(0)}">
                                <c:set var="active" value="active" />
                            </c:when>
                            <c:otherwise>
                                <c:set var="active" value="" />
                            </c:otherwise>
                        </c:choose>
                        <div class="carousel-item ${active} ">
                            <img src="${i.avatar}"
                                class="d-block w-10 rounded-circle rounded-1"
                                alt="${i.firstname} ${i.lastname}" style="  width: 18.3vw;
                         height: 35vh;">
                            <div class="card-body" style=" height : 30vh;">
                                <h5 class="card-title">${i.firstname} ${i.lastname}
                                </h5>
                                <p class="card-text">Description: ${i.description}
                                </p>
                                <p class="card-text">Role: ${i.role}</p>
                            </div>
                        </div>
                    </c:when>
                    <c:when test="${item.key == 'Subject'}">
                        <c:choose>
                            <c:when test="${i == item.value.get(0)}">
                                <c:set var="active" value="active" />
                            </c:when>
                            <c:otherwise>
                                <c:set var="active" value="" />
                            </c:otherwise>
                        </c:choose>
                        <div class="carousel-item ${active}">
                            <img src="${i.image}"
                                class="d-block w-10 rounded-circle rounded-1"
                                alt="${i.name}  ">
                            <div class="card-body" style=" height : 30vh;">
                                <h5 class="card-title">${i.name}</h5>
                                <p class="card-text">Description: ${i.description}
                                </p>
                                <p class="card-text"> </p>
                            </div>
                        </div>
                    </c:when>

                    <c:otherwise>
                        No comment sir...
                    </c:otherwise>
                </c:choose>

            </c:forEach>
        </div>
        <button class="carousel-control-prev" type="button"
            data-bs-target="#carouselExampleControls_${item.key}"
            data-bs-slide="prev">
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button"
            data-bs-target="#carouselExampleControls_${item.key}"
            data-bs-slide="next">
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <button class="btn btn-primary" type="button" data-bs-toggle="collapse"
        data-bs-target="#collapseExample_${item.key}" aria-expanded="false"
        aria-controls="collapseExample">
        View All
    </button>
    <div class="card-footer">
        <small class="text-muted">Last updated 3 mins ago</small>
    </div>
</div>
</div>

        </c:forEach>
    </div>
</div>

</div> -->

        <!-- ----------------------------------------------- -->
        <!-- Update -->
        <!-- Page wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <div class="sidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar_logo" href="/QuizPractice/Admin"><img class="sidebar_img" src="${path}/asset/img/logo/ezuni_5.png" alt="Ezuni_logo" /></a>

                <!-- Nav Item - Dashboard -->
                <ul class="nav-links">
                    <li>
                        <div class="iocn-link">
                            <a href="/QuizPractice/LoggOutController">
                                <i class="fas fa-sign-out-alt"></i>
                                <span class="avt_option">Log Out</span>
                            </a>
                            <i class="fas fa-sign-out-alt"></i>
                        </div>

                    </li>
                    <li>
                        <div class="iocn-link">
                            <a href="#">
                                <i class="fas fa-chart-line sidebar_icon"></i>
                                <span class="link_name">Dashboard</span>
                            </a>
                            <i class="fas fa-chevron-right sidebar_arrow"></i>
                        </div>
                        <ul class="sub-menu">
                            <li><a onclick="RenderDashBroad('Overview')">Overview</a></li>
                            <li><a onclick="RenderDashBroad('Monthly')">Monthly</a></li>
                            <li><a onclick="RenderDashBroad('Weekly')">Weekly</a></li>
                            <li><a onclick="RenderDashBroad('Daily')">Daily</a></li>
                        </ul>
                    </li>
                    <li>
                        <div class="iocn-link">
                            <a href="#">
                                <i class="far fa-file-alt sidebar_icon"></i>
                                <span class="link_name">Quiz</span>
                            </a>
                            <i class="fas fa-chevron-right sidebar_arrow"></i>
                        </div>
                        <ul class="sub-menu">
                            <li><a onclick="RenderExamList()">Quiz</a></li>
                            <li><a onclick="RenderQuestionList()">Question</a></li>
                        </ul>
                    </li>
                    <li>
                        <div class="iocn-link">
                            <a href="#">
                                <i class="fas fa-users sidebar_icon"></i>
                                <span class="link_name">User</span>
                            </a>
                            <i class="fas fa-chevron-right sidebar_arrow"></i>
                        </div>
                        <ul class="sub-menu">
                            <li><a onclick="RenderUserList()">User</a></li>
                            <li><a onclick="RenderLoginHistory()">Login History</a></li>
                            <script>
                                function RenderUserList() {
                                    $.post('/QuizPractice/views/admin/users/list.jsp', {}, function (data, status) {
                                        console.log(data);
                                        $('#body').html(data);
                                    });
                                }

                                function RenderLoginHistory() {
                                    $.post('/QuizPractice/views/admin/users/loginhistory.jsp', {}, function (data, status) {
                                        console.log(data);
                                        $('#body').html(data);
                                    });
                                }
                            </script>
                            <li><a  href="/QuizPractice/BlogManage" target="_blank">Blogs</a></li>
                            <li><a  href="/QuizPractice/RegistrationList" target="_blank">Registrations</a></li>

                        </ul>
                    </li>
                    <li>
                        <div class="iocn-link">
                            <a href="#">
                                <i class="fas fa-book sidebar_icon"></i>
                                <span class="link_name">Subject</span>
                            </a>
                            <i class="fas fa-chevron-right sidebar_arrow"></i>
                        </div>
                        <ul class="sub-menu">

                            <li><a  href="/QuizPractice/SubjectController" target="_blank" class="link-dark rounded">Subject List</a></li>
                        </ul>
                    </li>
                    <!-- Notification -->

                    <li class="mb-1">
                        <button class="btn btn-toggle align-items-center rounded collapsed"
                                data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
                            <p type="button" class="btn btn-infor position-relative">
                                Show Notification
                                <span
                                    class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                    ${dataNotify.size()}
                                    <span class="visually-hidden">unread messages</span>
                                </span>
                            </p>
                        </button>
                        <div class="collapse show" id="account-collapse">
                            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small" id="notify" style="overflow: auto; height: 60vh;">
                                <c:forEach items="${dataNotify}" var="no">
                                    <li>
                                        <div class="card">
                                            <div class="card-body">
                                                <h6 class="card-title">Notification number: ${no.id}
                                                </h6>
                                                <h6>${no.title}</h6>
                                                <h6 class="card-subtitle mb-2 text-muted">
                                                    Time:${no.time} </h6>
                                                <p class="card-text"> ${no.des} </p>

                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </li>

                </ul>

            </div>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Body Code -->
                    <section id="body" style="overflow: auto; height: 106vh;">

                    </section>
                    <!-- End of Body Code -->
                </div>
                <!-- End of Main Content -->
            </div>
            <!-- End of Content Wrapper -->

            <div style="overflow: auto; height: 100vh;">
                <c:forEach items="${dataList}" var="item">
                    <div class="mt-4 justify-content-center">
                        <div class="card h-100 shadow bg-body rounded">
                            <figure class="text-center mb-3">
                                <blockquote class="blockquote">
                                    <p>All Of ${item.key}</p>
                                </blockquote>
                                <figcaption class="blockquote-footer">
                                    Display ${param.type} Of ${item.key}<cite title="Source Title"></cite>
                                </figcaption>
                            </figure>
                            <div id="carouselExampleControls_${item.key}" class="carousel slide" data-bs-ride="carousel">
                                <div class="carousel-inner">
                                    <!--Get Contribution here-->
                                    <c:forEach items="${item.value}" var="i" begin="0" end="9" step="1">
                                        <c:choose>
                                            <c:when test="${item.key == 'User'}">
                                                <c:choose>
                                                    <c:when test="${i == item.value.get(0)}">
                                                        <c:set var="active" value="active" />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:set var="active" value="" />
                                                    </c:otherwise>
                                                </c:choose>
                                                <div class="carousel-item ${active} ">
                                                    <img src="${i.avatar}" class="d-block w-10 rounded-circle rounded-1" alt="${i.firstname} ${i.lastname}" style="  width: 18.3vw;
                                                         height: 35vh;">
                                                    <div class="card-body" style=" height : 30vh;">
                                                        <h5 class="card-title">${i.firstname} ${i.lastname}
                                                        </h5>
                                                        <p class="card-text">Description: ${i.description}
                                                        </p>
                                                        <p class="card-text">Role: ${i.role}</p>
                                                    </div>
                                                </div>
                                            </c:when>
                                            <c:when test="${item.key == 'Subject'}">
                                                <c:choose>
                                                    <c:when test="${i == item.value.get(0)}">
                                                        <c:set var="active" value="active" />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:set var="active" value="" />
                                                    </c:otherwise>
                                                </c:choose>
                                                <div class="carousel-item ${active}">
                                                    <img src="${i.image}" class="d-block w-10 rounded-circle rounded-1" alt="${i.name}  ">
                                                    <div class="card-body" style=" height : 30vh;">
                                                        <h5 class="card-title">${i.name}</h5>
                                                        <p class="card-text">Description: ${i.description}
                                                        </p>
                                                        <p class="card-text"> </p>
                                                    </div>
                                                </div>
                                            </c:when>

                                            <c:otherwise>
                                                No comment sir...
                                            </c:otherwise>
                                        </c:choose>


                                    </c:forEach>
                                </div>
                                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls_${item.key}" data-bs-slide="prev">
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls_${item.key}" data-bs-slide="next">
                                    <span class="visually-hidden">Next</span>
                                </button>
                            </div>
                            <button class="btn btn-primary" type="button" data-bs-toggle="collapse" data-bs-target="#collapseExample_${item.key}" aria-expanded="false" aria-controls="collapseExample">
                                View All
                            </button>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>

                </c:forEach>
            </div>


        </div>
        <script>
            let arrow = document.querySelectorAll('.iocn-link');
            for (var i = 0; i < arrow.length; i++) {
                arrow[i].addEventListener('click', (e) => {
                    let arrowParent = e.target.parentElement.parentElement.parentElement; //selecting main parent of arrow
                    console.log(arrowParent);
                    arrowParent.classList.toggle("showMenu");
                });
            }
        </script>

    </body>
    <!--MyJS-->
    <script src="${path}/asset/js/admin/DashBoardController.js"></script>
    <script src="${path}/asset/js/admin/QuizzController.js"></script>
    <script src="${path}/asset/js/connection.js"></script>
    <!-- main js  -->
    <script>
            RenderDashBroad('Overview');
    </script>

</html>