<%--
    Document   : footer
    Created on : Sep 23, 2021, 10:02:56 PM
    Author     : VietThang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="author" content="" />
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
      href="${path}/aasset/img/logo/favicon-32x32.png"
    />
    <link
      rel="icon"
      type="image/png"
      sizes="16x16"
      href="${path}/asset/img/logo/favicon-16x16.png"
    />
    <link rel="manifest" href="${path}/asset/images/site.webmanifest" />
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
    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="${path}/asset/css/reset.css" />
    <link href="${path}/asset/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${path}/asset/css/footer.css" />
  </head>

  <body>
    <!-- Footer -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col introduce">
                    <h4>About us</h4>
                    <ul>
                        <li>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Corporis, voluptatem ad ab, dolores, eligendi molestias officiis repellendus voluptatibus deserunt consequuntur ducimus. Nobis quis ex, numquam voluptatum deserunt at iure repudiandae.</li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>contact</h4>
                    <ul>
                        <li><a href="#"><i class="fas fa-map-marker-alt"></i> <br>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.</a></li>
                        <li><a href="#"><i class="fas fa-phone-alt"></i> <br>
                            (024)1308.13.13</a></li>
                        <li><a href="#"><i class="far fa-envelope"></i> <br>
                            ezunieducation@edu.vn</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>follow us</h4>
                    <div class="social-links">
                        <a href="https://www.facebook.com"><i class="fab fa-facebook-f"></i></a>
                        <a href="https://www.youtube.com"><i class="fab fa-linkedin-in"></i></a>
                        <a href="https://www.instagram.com"><i class="fab fa-instagram-square"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>

</body>
</html>