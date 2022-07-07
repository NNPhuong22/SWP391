<%-- 
    Document   : blog_sider
    Created on : Oct 11, 2021, 3:06:06 PM
    Author     : HP
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:set var="path" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <!-- Core theme CSS (includes Bootstrap)-->
                <link rel="stylesheet" href="${path}/asset/bootstrap/css/bootstrap.min.css">
                <script src="${path}/asset/js/connection.js"></script>
            </head>

            <body>
                
                <!-- Categories widget-->
                <div class="card mb-4">
                    <div class="card-header">Categories</div>
                    <div class="card-body">
                        <div class="row">
                            <c:forEach items="${cl}" var="o">
                                <div class="col-sm-6">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="BlogList?cat=${o}">${o}</a></li>
                                    </ul>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!-- Side widget-->
                <div class="card mb-4">
                    <div class="card-header">Blog</div>
                    <div class="card-body">This is the blog feature</div>
                </div>
                <script src="${path}/asset/js/bootstrap.min.js"></script>
            </body>

            </html>