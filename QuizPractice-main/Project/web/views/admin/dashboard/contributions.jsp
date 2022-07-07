<%--
    Document   : contributions
    Created on : Oct 27, 2021, 2:26:08 PM
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
            <c:forEach items="${dataProgress}" var="d">
                <h3>
                    ${d.key}
                    <small class="text-muted"> </small>
                </h3>
                <div class="progress mb-3" style="height: 3vh;">

                    <div class="progress-bar progress-bar-animated progress-bar-striped" role="progressbar" style="width: ${d.value}%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">${d.value}/100</div>
                </div>
            </c:forEach>

        </div>
        <div class="row">
            <c:forEach items="${dataContribution}" var="d">
                <!-- Earnings (Monthly) Card Example -->
                <div class="col-xl-2 col-md-6 mb-4">
                    <div class="card border-left-primary shadow h-100 py-2">
                        <div class="card-body">
                            <div class="row no-gutters align-items-center">
                                <div class="col mr-2">
                                    <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                        Total ${d.key} </div>
                                        <c:if test="${d.key == 'Total Earnings'}">
                                            <c:set var="moneyUnit" value="$" />
                                        </c:if>
                                    <div class="h5 mb-0 font-weight-bold text-gray-800">${d.value}${moneyUnit} </div>
                                    <c:set var="moneyUnit" value="" />
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-${d.key}  fa-2x text-gray-300"></i>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </body>
    <script>
    </script>

</html>