<%-- 
    Document   : subject
    Created on : Oct 3, 2021, 6:56:23 PM
    Author     : hieu phan
    jjjjjjjjjj
--%>

<%@page import="Enitity.Lesson"%>
<%@page import="Enitity.Topic"%>
<%@page import="Enitity.Subject"%>
<%@page import="Controller.Subject.SubjectController"%>
<%@page import="Enitity.SubjectType"%>
<%@page import="Enitity.SubjectCat"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>


    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Ezuni - Online Education System</title>
        <!-- Favicon-->
        <link
            rel="apple-touch-icon"
            sizes="180x180"
            href="${path}/asset/img/logo/apple-touch-icon.png"
            />
        <link
            rel="icon"
            type="image/png"
            sizes="32x32"
            href="${path}/asset/img/logo/favicon-32x32.png"
            />
        <link
            rel="icon"
            type="image/png"
            sizes="16x16"
            href="${path}/asset/img/logo/favicon-16x16.png"
            />
        <link rel="manifest" href="${path}/asset/img/logo/site.webmanifest" />
        <!-- Font Awesome icons (free version)-->
        <script
            src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
            crossorigin="anonymous"
        ></script>
        <!-- Google fonts-->
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
            rel="stylesheet"
            />
        <link
            href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800&display=swap"
            rel="stylesheet"
            />
        <!-- CSS asset (includes Bootstrap)-->
        <link rel="stylesheet" href="${path}/asset/css/reset.css" />
        <link
            href="${path}/asset/bootstrap/css/bootstrap.min.css"
            rel="stylesheet"
            />
        <!-- Stylesheet -->
        <link rel="stylesheet" href="${path}/asset/css/subject/vendor.css">
        <!--<link rel="stylesheet" href="${path}/asset/css/subject/style.css">-->
        <link rel="stylesheet" href="${path}/asset/css/subject/responsive.css">
        <link rel="stylesheet" href="${path}/asset/css/subject/color-blue.css">


    </head>
    <jsp:include page="/views/nav.jsp"></jsp:include>
        <body style="background-color: #E2E8F0;">
        <% List<Topic> topics = (List<Topic>) request.getAttribute("topics");

            List<Lesson> lessons = (List<Lesson>) request.getAttribute("lessons");
            Subject s = (Subject) request.getAttribute("subject");

        %>
        <style>
            a {
                text-decoration: none!important;
                color: black!important;
            }
            .folder {
                list-style: none;
                cursor: pointer;
                margin: 4px 0;
                counter-reset: section;
                cursor: pointer!important;
            }

            .folder>ul {
                display: none;
            }

            .folder.folder-open>ul {
                display: block;
                padding-left: 28px;
                /* margin-left: 9px;
                border-left: 2px solid #5f6f72; */
            }

            .folder>ul>li::before {
                content: "";
                position: absolute;
                display: inline-block;
                top: calc(50% - 10px);
                left: -25px;
                width: 18px;
                height: 18px;
                background-repeat: no-repeat;
                background-image: url(/static/img/status_none.svg);
            }

            .folder li {
                margin-bottom: 10px;
            }
            img{

            }
        </style>

        <!-- latest-course start -->
        <div class="latest-course-area" style="margin-top: 100px!important;">

            <div class="container">

                <h1><span class="badge bg-success"><%=s.getName()%></span></h1>
                <span class="badge bg-info text-dark">Organization: <%=s.getOrganization() %></span>
                <br><br><br>
                <div class="row">
                    <div class="col-lg-3">
                        <div class="dmne-sidebar">
                            <div class="widget widget-select-inner">
                                <img src="<%=s.getImage()%>">
                                <h4 class="widget-title">Lesson Topic</h4>
                                <ul class="file-browser">
                                    <li><a href="LessonController?subID=<%=s.getS_id() %>"><i class="fa fa-plus"></i> All Lesson</a></li>
                                        <% for (Topic t : topics) {

                                        %>
                                    <li class="folder">


                                        <label class="single-select-inner" style="cursor: pointer;">
                                            <a href="LessonController?subID=<%=s.getS_id() %>&topic=<%=t.getTopic_id() %>"><i class="fa fa-plus"></i>

                                            <%=t.getName()%>
                                            </a>
                                        </label>



                                    </li>
                                    <% }%>   


                                </ul>
                            </div>
                        </div>
                    </div>

                    <!-- display lesson -->

                    <div class="col-lg-9">
                        <div class="row">
                            <figure class="text-center mb-0">
                                <blockquote class="blockquote">
                                    <p class="pb-3">
                                        <i class="fas fa-quote-left fa-xs text-primary"></i>
                                        <span class="lead font-italic">To reap a return in ten years, plant trees. To reap a return in 100, cultivate the people.</span>
                                        <i class="fas fa-quote-right fa-xs text-primary"></i>
                                    </p>
                                </blockquote>
                                <figcaption class="blockquote-footer mb-0">
                                    Ho Chi Minh president
                                </figcaption>
                            </figure>
                            <br><br><br>
                            <% for (Topic tp: topics){ %>
                            
                            <h3 style="margin-top:10px;"><span class="badge bg-secondary">Topic: <%=tp.getName() %> </span></h3>
                          
                                <% for (Lesson ls : lessons) {;
                                    if (ls.getTopic_id()== tp.getTopic_id()) {  %>
                            
                                    
                                    <div class="accordion" id="accordionExample">
                                        <div class="accordion-item">
                                            <h2 class="accordion-header row" id="headingOne">

                                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne<%=ls.getL_id()%>" aria-expanded="true" aria-controls="collapseOne">
                                                    <%=ls.getNo()%>. <%=ls.getName()%>
                                                </button>
                                            </h2>
                                            <div id="collapseOne<%=ls.getL_id()%>" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                                <div class="accordion-body" style="font-size:15px;">
                                                    <p><%=ls.getContent()%></p>
                                                </div>
                                                    <a href="LessonController?subID=<%=s.getS_id() %>&action=view&l_id=<%=ls.getL_id() %>" style="color:white!important;"><button class="btn btn-success" style=" width: 100%; margin-bottom: 5px;">Study</button></a>
                                            </div>
                                        </div>
                                    </div>

                                    <% }}}%>


                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                    <!-- latest-course end -->




                                    <div id="footer">
                                        <jsp:include page="/views/footer.jsp"></jsp:include>
                                        </div>

                                        <!-- back to top area start -->
                                        <div class="back-to-top">
                                            <span class="back-top"><i class="fa fa-angle-up"></i></span>
                                        </div>
                                        <!-- back to top area end -->

                                        <script src="${path}/asset/JQuery/JQuery.js"></script>
                                    <!-- all plugins here -->
                                    <script src="${path}/asset/js/subject/vendor.js"></script>
                                    <!-- main js  -->
                                    <script src="${path}/asset/js/subject/main.js"></script>
                                    <script>
                                        $(document).on('click', '.dropdown-menu', function (e) {
                                            e.stopPropagation();
                                        });

                                        // make it as accordion for smaller screens
                                        if ($(window).width() < 992) {
                                            $('.dropdown-menu a').click(function (e) {
                                                e.preventDefault();
                                                if ($(this).next('.submenu').length) {
                                                    $(this).next('.submenu').toggle();
                                                }
                                                $('.dropdown').on('hide.bs.dropdown', function () {
                                                    $(this).find('.submenu').hide();
                                                })
                                            });
                                        }
                                    </script>
                                    </body>

                                    </html>
