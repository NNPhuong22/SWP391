<%-- 
    Document   : subject
    Created on : Oct 3, 2021, 6:56:23 PM
    Author     : hieu phan
    
--%>

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
                                    <!-- CSS asset (includes Bootstrap)-->
                                    <link rel="stylesheet" href="${path}/asset/css/reset.css" />
                                    <link href="${path}/asset/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
                                    <!-- Stylesheet -->
                                    <link rel="stylesheet" href="${path}/asset/css/subject/vendor.css">
                                    <!--<link rel="stylesheet" href="${path}/asset/css/subject/style.css">-->
                                    <link rel="stylesheet" href="${path}/asset/css/subject/responsive.css">
                                    <link rel="stylesheet" href="${path}/asset/css/subject/color-blue.css">


                                </head>
                                <jsp:include page="/views/nav.jsp"></jsp:include>

                                <body style="background-color: #E2E8F0;">
                                    <% List<SubjectCat> cats = (List<SubjectCat>) request.getAttribute("cats");
            List<SubjectType> types = (List<SubjectType>) request.getAttribute("types");
            List<Subject> subjects = (List<Subject>) request.getAttribute("subjects");
            SubjectController scon = new SubjectController();

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
                                            
                                            img {}
                                        </style>

                                        <!-- latest-course start -->
                                        <div class="latest-course-area" style="margin-top: 100px!important;">
                                            <div class="container">
                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <div class="dmne-sidebar">
                                                            <div class="widget widget-select-inner">
                                                                <h4 class="widget-title">Categories</h4>
                                                                <ul class="file-browser">
                                                                    <li><a href="SubjectController"><i class="fa fa-plus"></i> All Subject</a></li>
                                                                    <% for (SubjectCat s : cats) {
                                                List<SubjectType> st = scon.findType(types, s.getCatId());
                                        %>
                                                                        <li class="folder">


                                                                            <label class="single-select-inner" style="cursor: pointer;">
                                            <i class="fa fa-plus"></i>

                                            <%=s.getName()%>

                                        </label>


                                                                            <ul>
                                                                                <% for (SubjectType t : st) {%>
                                                                                    <li class="file">
                                                                                        <a class="single-select-inner" href="SubjectController?subjectType=<%=t.getId()%>">
                                                                                            <%=t.getName()%>
                                                                                        </a>
                                                                                    </li>
                                                                                    <% } %>
                                                                            </ul>
                                                                        </li>
                                                                        <% }%>


                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <!-- display subject -->

                                                    <div class="col-lg-9">
                                                        <div class="row">
                                                            <% for (Subject sj : subjects) {%>
                                                                <div class="col-lg-4 col-md-6">
                                                                    <div class="single-course-inner style-two">
                                                                        <div class="thumb">
                                                                            <a type="button" data-toggle="modal" data-target="#subject<%=sj.getS_id()%>"><img src="<%=sj.getImage()%>" alt="img"></a>
                                                                            <div class="rating">4.9/5 <i class="fa fa-star"></i></div>
                                                                        </div>
                                                                        <div class="details">
                                                                            <div class="meta">
                                                                                <div class="row">
                                                                                    <div class="col-6">
                                                                                        <p>5,957 students</p>
                                                                                    </div>
                                                                                    <div class="col-6 text-right">
                                                                                        <p>01h 49m</p>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <h5>
                                                                                <a type="button" data-toggle="modal" data-target="#subject<%=sj.getS_id()%>">
                                                                                    <%=sj.getName()%>
                                                                                </a>
                                                                            </h5>

                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <!-- Large modal -->

                                                                <!-- Modal -->
                                                                <div class="modal fade" id="subject<%=sj.getS_id()%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h5 class="modal-title" id="exampleModalLabel">Subject Details</h5>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                                                            </div>
                                                                            <div class="modal-body">
                                                                                <img src="<%=sj.getImage()%>" alt="img">
                                                                                <h1>
                                                                                    <%=sj.getName()%>
                                                                                </h1>
                                                                                <p style="color: green; font-style: italic;">
                                                                                    <%=sj.getOrganization()%>
                                                                                </p>
                                                                                <p>
                                                                                    <%=sj.getDescription()%>
                                                                                </p>
                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                                <button type="submit" class="btn btn-primary"><a href="SubjectDetail?subID=<%=sj.getS_id()%>">Register</a></button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <% }%>


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
                                            $(document).on('click', '.dropdown-menu', function(e) {
                                                e.stopPropagation();
                                            });

                                            // make it as accordion for smaller screens
                                            if ($(window).width() < 992) {
                                                $('.dropdown-menu a').click(function(e) {
                                                    e.preventDefault();
                                                    if ($(this).next('.submenu').length) {
                                                        $(this).next('.submenu').toggle();
                                                    }
                                                    $('.dropdown').on('hide.bs.dropdown', function() {
                                                        $(this).find('.submenu').hide();
                                                    })
                                                });
                                            }
                                        </script>
                                </body>

                                </html>