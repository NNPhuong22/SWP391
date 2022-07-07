<%-- Document : nav Created on : Sep 23, 2021, 10:02:56 PM Author : VietThang
--%> <%@page contentType="text/html" pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">
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
    <!-- CSS Core -->
    <link rel="stylesheet" href="${path}/asset/css/404.css" />
</head>
<body>
    <div id="layoutError">
        <div id="layoutError_content">
            <main>
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-6">
                            <div class="text-center mt-4">
                                <img class="mb-4 img-error" src="${path}/asset/img/error/error-404-monochrome.svg" />
                                <p class="lead">This requested URL was not found on this server.</p>
                                <a href="home.jsp">
                                    <i class="fas fa-arrow-left me-1"></i>
                                    Return to Home
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <div id="layoutError_footer">
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Your Website 2021</div>
                        <div>
                            <a href="#">Privacy Policy</a>
                            &middot;
                            <a href="#">Terms &amp; Conditions</a>
                        </div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</body>
</html>