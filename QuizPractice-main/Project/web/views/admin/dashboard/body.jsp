<%--
    Document   : contributions
    Created on : Oct 24, 2021, 9:09:09 AM
    Author     : TrungHuy
--%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

            <c:set var="path" value="${pageContext.request.contextPath}" />
            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <!--MyJS-->
                <script src="${path}/asset/js/admin/DashBoardController.js"></script>
                <script src="${path}/asset/js/admin/UpdateController.js"></script>

                <script>
                    $(".table").DataTable({
                        "order": [
                            [0, "desc"]
                        ]
                    });
                </script>
            </head>

            <body>
                <input type="hidden" value="${param.type}" id="dataContribution">
                <div data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-offset="0" class="scrollspy-example" tabindex="0">
                    <div style="margin: 19px 0;">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                                <li class="breadcrumb-item active" aria-current="page">${param.type}</li>
                            </ol>
                        </nav>
                    </div>

                    <div id="contributions">
                        <script>
                            RenderContributions($('#dataContribution').val());
                        </script>
                    </div>
                    <div id="chart">
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
                                                    <p class="text-center">Time ${time.year}/${time.month}/${time.week}/${time.day}</p>
                                                    <canvas id="barChart_${time.year}_${time.month}_${time.week}_${time.day}" value="${time.year}_${time.month}_${time.week}_${time.day}"></canvas>

                                                </div>
                                            </td>

                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                        </div>
                        <script>
                            document.body.scrollTop = 0;
                            document.documentElement.scrollTop = 0;
                            var charset = document.getElementsByTagName("canvas");
                            console.log(charset.length);
                            for (var i = 0; i < charset.length; i++) {

                                RenderChart($('#dataContribution').val(), charset[i].id, charset[i].attributes[1].value);

                            }
                        </script>
                    </div>

                </div>

            </body>





            </html>