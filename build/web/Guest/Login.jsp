
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- SEO Meta Tags -->
        <meta name="description"
              content="Tivo is a HTML landing page template built with Bootstrap to help you crate engaging presentations for SaaS apps and convert visitors into users.">
        <meta name="author" content="Inovatik">

        <!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, Google+ -->
        <meta property="og:site_name" content="" /> <!-- website name -->
        <meta property="og:site" content="" /> <!-- website link -->
        <meta property="og:title" content="" /> <!-- title shown in the actual shared post -->
        <meta property="og:description" content="" /> <!-- description shown in the actual shared post -->
        <meta property="og:image" content="" /> <!-- image link, make sure it's jpg -->
        <meta property="og:url" content="" /> <!-- where do you want your post to link to -->
        <meta property="og:type" content="article" />

        <!-- Website Title -->
        <title>Login Page</title>

        <!-- Styles -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700&display=swap&subset=latin-ext"
              rel="stylesheet">
        <link href="../modify/css/bootstrap.css" rel="stylesheet">
        <link href="../modify/css/fontawesome-all.css" rel="stylesheet">
        <link href="../modify/css/swiper.css" rel="stylesheet">
        <link href="../modify/css/magnific-popup.css" rel="stylesheet">
        <link href="../modify/css/styles.css" rel="stylesheet">

        <!-- Favicon  -->
        <link rel="icon" href="images/favicon.png">

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top" height="120 px">
            <div class="container">
                <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                    <
                </div>
            </div>
        </nav>
        <%
            if (request.getParameter("login") != null) {
                String sel = "select * from tbl_user where user_email='" + request.getParameter("txtname") + "' and user_password='" + request.getParameter("txtpwd") + "' and user_status='1' ";
                ResultSet rs = con.selectCommand(sel);

                String sel1 = "select * from tbl_seller where seller_email='" + request.getParameter("txtname") + "' and seller_password='" + request.getParameter("txtpwd") + "' and seller_status='1' ";
                ResultSet rs1 = con.selectCommand(sel1);

                String sel2 = "select * from tbl_analyser where analyser_email='" + request.getParameter("txtname") + "' and analyser_password='" + request.getParameter("txtpwd") + "' and analyser_status='1' ";
                ResultSet rs2 = con.selectCommand(sel2);

                String sel3 = "select * from tbl_admin where admin_username='" + request.getParameter("txtname") + "' and admin_password='" + request.getParameter("txtpwd") + "'";
                ResultSet rs3 = con.selectCommand(sel3);

                //checking username,password table and page
                if (rs.next()) {
                    session.setAttribute("userid", rs.getString("user_id"));
                    response.sendRedirect("../User/Homepage.jsp");
                } else if (rs1.next()) {
                    session.setAttribute("sellerid", rs1.getString("seller_id"));
                    response.sendRedirect("../Seller/Homepage.jsp");
                } else if (rs2.next()) {
                    session.setAttribute("analyserid", rs2.getString("analyser_id"));
                    response.sendRedirect("../Analyser/Homepage.jsp");
                } else if (rs3.next()) {
                    session.setAttribute("adminid", rs3.getString("admin_id"));
                    response.sendRedirect("../Admin/Homepage.jsp");
                } else {
        %>

        <script>alert('invalid id');</script>

        <%
                }
            }

        %>

        <!-- Header -->
        <header id="header" class="ex-2-header">

            <div class="row">
                <div class="col-lg-12">
                    <h1>Two Wheels</h1>
                    <h1>Log In</h1>
                    <p>You don't have a password? Then please <a class="white" href="">Register</a></p>
                    <!-- Sign Up Form -->
                    <div class="form-container">
                        <form id="logInForm" data-toggle="validator" data-focus="false">
                            <div class="form-group">
                                <input type="email" class="form-control-input" name="txtname" id="lemail" required>
                                <label class="label-control" for="lemail">Email</label>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control-input" name="txtpwd" id="lpassword" required>
                                <label class="label-control" for="lpassword">Password</label>
                                <div class="help-block with-errors"></div>
                            </div>
                            <div class="form-group">
                                <button type="submit" name="login" class="form-control-submit-button">LOG IN</button>
                            </div>
                            <div class="form-message">
                                <div id="lmsgSubmit" class="h3 text-center hidden"></div>
                            </div>
                        </form>
                    </div> <!-- end of form container -->
                    <!-- end of sign up form -->
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </header> <!-- end of ex-header -->
    <!-- end of header -->

    <!-- Footer -->
    <svg class="ex-footer-frame" data-name="Layer 2" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="none"
         viewBox="0 0 1920 79">
    <defs>
    <style>
        .cls-2 {
            fill: #5f4def;
        }
    </style>
    </defs>
    <title>footer-frame</title>
    <path class="cls-2"
          d="M0,72.427C143,12.138,255.5,4.577,328.644,7.943c147.721,6.8,183.881,60.242,320.83,53.737,143-6.793,167.826-68.128,293-60.9,109.095,6.3,115.68,54.364,225.251,57.319,113.58,3.064,138.8-47.711,251.189-41.8,104.012,5.474,109.713,50.4,197.369,46.572,89.549-3.91,124.375-52.563,227.622-50.155A338.646,338.646,0,0,1,1920,23.467V79.75H0V72.427Z"
          transform="translate(0 -0.188)" />
    </svg>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="footer-col first">
                        <h4>About Two Wheels</h4>
                        <p class="p-small">We're passionate about to help motorcycle and scooter consumers decide on
                            buying the
                            right two wheeler,at the right price and from the right partner</p>
                    </div>
                </div> <!-- end of col -->
                <div class="col-md-4">
                    <div class="footer-col middle">
                        <h4>Links 4 U </h4>
                        <ul class="list-unstyled li-space-lg p-small">
                            <li class="media">
                                <i class="fas fa-square"></i>
                                <div class="media-body">Our business <a class="white" href="">twowheels.com</a></div>
                            </li>
                            <li class="media">
                                <i class="fas fa-square"></i>
                                <div class="media-body">Read our <a class="white" href="">Terms &
                                        Conditions</a>, <a class="white" href="">Privacy Policy</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div> <!-- end of col -->
                <div class="col-md-4">
                    <div class="footer-col last">
                        <h4>Contact</h4>
                        <ul class="list-unstyled li-space-lg p-small">
                            <li class="media">
                                <i class="fas fa-map-marker-alt"></i>
                                <div class="media-body">Kumminiyil (H) Edadu P.O. Moolamattom</div>
                            </li>
                            <li class="media">
                                <i class="fas fa-envelope"></i>
                                <div class="media-body"><a class="white"
                                                           href="www.instagrm.com/its.me.albin">insta@Albin</a> <i
                                                           class="fas fa-globe"></i><a class="white"
                                                           href="albinmathew317@gmail.com">albinmathew317@gmail.com</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div> <!-- end of col -->
            </div> <!-- end of row -->
        </div> <!-- end of container -->
    </div> <!-- end of footer -->
    <!-- end of footer -->
</body>
</html>
