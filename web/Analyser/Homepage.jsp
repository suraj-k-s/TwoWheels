

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
        <title>Home Page</title>
        <%@include file="SessionValidator.jsp" %>
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
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
            <div class="container">

                <!-- Text Logo - Use this if you don't have a graphic logo -->
                <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Tivo</a> -->

                <!-- Image Logo -->
                <a class="navbar-brand logo-image" href=""><img src="../Assets/logo/images.png" alt="alternative"></a>

                <!-- Mobile Menu Toggle Button -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault"
                        aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-awesome fas fa-bars"></span>
                    <span class="navbar-toggler-awesome fas fa-times"></span>
                </button>
                <!-- end of mobile menu toggle button -->

                <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link page-scroll" href="sendcomp.jsp">COMPLAINTS<span
                                    class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link page-scroll" href="sendfeed.jsp">FEEDBACK</a>
                        </li>
                         <li class="nav-item">
                             <a class="nav-link page-scroll" href="Vreply.jsp">view reply</a>
                        </li>

                        <!-- Dropdown Menu -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle page-scroll" href="" id="navbarDropdown"
                               role="button" aria-haspopup="true" aria-expanded="false">DETAILS</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href=""><span class="item-text">ARTICLE
                                        DETAILS</span></a>
                                <div class="dropdown-items-divide-hr"></div>
                                <a class="dropdown-item" href="terms-conditions.html"><span class="item-text">TERMS
                                        CONDITIONS</span></a>
                                <div class="dropdown-items-divide-hr"></div>
                                <a class="dropdown-item" href="privacy-policy.html"><span class="item-text">PRIVACY
                                        POLICY</span></a>
                            </div>
                        </li>
                        <!-- end of dropdown menu -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle page-scroll" href="" id="navbarDropdown"
                               role="button" aria-haspopup="true" aria-expanded="false">PROFILE</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="myprofile.jsp"><span class="item-text">MY PROFILE
                                    </span></a>
                                <div class="dropdown-items-divide-hr"></div>
                                <a class="dropdown-item" href="editprofile.jsp"><span class="item-text">EDIT PROFILE
                                    </span></a>
                                  <div class="dropdown-items-divide-hr"></div>
                                <a class="dropdown-item" href="changepass.jsp"><span class="item-text">CHANGE PASSWORD
                                    </span></a>
                                
                            </div>
                        </li>
                    </ul>
                    <span class="nav-item">
                        <a class="btn-outline-sm" href="../Guest/Login.jsp">LOG OUT</a>
                    </span>
                </div>
            </div> <!-- end of container -->
        </nav> <!-- end of navbar -->
        <!-- end of navigation -->

        <!-- Header -->
        <header id="header" class="ex-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Two Wheels</h1>
                    </div> <!-- end of col -->
                </div> <!-- end of row -->
            </div> <!-- end of container -->
        </header> <!-- end of ex-header -->
        <!-- end of header -->
        <h1 align="center">Options</h1>
        <form method="post">
            <table border="1" align="center" style="border-collapse: collapse" cellpadding="10">
                <tr>
                    
                    <td>
                         <a href="viewveh.jsp">View vehicle</a>

                    </td>
                </tr>    
                
            </table>
        </form>
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

