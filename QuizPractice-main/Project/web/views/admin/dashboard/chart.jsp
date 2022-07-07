<%-- 
    Document   : chart
    Created on : Nov 2, 2021, 6:22:28 AM
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
            </head>

            <body>
                <div class="row">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Chart</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${timeData}" var="time">
                                <tr>
                                    <td>
                                        <div class="chart shadow bg-body rounded">
                                            <canvas id="barChart_${time.year}_${time.month}_${time.week}_${time.day}" value="${time.year}_${time.month}_${time.week}_${time.day}"></canvas>

                                        </div>
                                    </td>

                                </tr>
                            </c:forEach>

                        </tbody>
                    </table>
                </div>
            </body>
            <script>
            </script>

            </html>