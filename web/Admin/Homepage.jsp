
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

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <link href="../modify/slide/css/vendor/bootstrap.css" rel="stylesheet" />
        <link href="../modify/slide/css/vendor/font-awesome.css" rel="stylesheet" />
        <link href="../modify/slide/css/vendor/slick.css" rel="stylesheet" />
        <link href="../modify/slide/css/vendor/slick-theme.css" rel="stylesheet" />
        <link href="../modify/slide/css/vendor/odometer-theme-default.css" rel="stylesheet" />
        <link href="../modify/slide/css/main.css" rel="stylesheet" />

        <!-- Favicon  -->
        <link rel="icon" href="images/favicon.png">

    </head>
    <body>
        
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top" height="120 px">
            <div class="container">

                <!-- Text Logo - Use this if you don't have a graphic logo -->
                <!-- <a class="navbar-brand logo-text page-scroll" href="index.html">Tivo</a> -->

                <!-- Image Logo -->
                <a class="navbar-brand logo-image" href=""><img src="../Assets/logo/images.png" alt="logo"></a>

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
                            <a class="nav-link page-scroll" href="addveh.jsp">ADD VEHICLE<span
                                    class="sr-only">(current)</span></a>
                        </li>
                       
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle page-scroll" href="" id="navbarDropdown"
                                       role="button" aria-haspopup="true" aria-expanded="false">VIEW and REPLY</a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="../Admin/Vcomp.jsp"><span class="item-text">COMPLAINTS
                                            </span></a>
                                        <div class="dropdown-items-divide-hr"></div>
                                        <a class="dropdown-item" href="../Admin/Vfeed.jsp"><span class="item-text">FIEDBACKS
                                            </span></a>
                                        <!-- Dropdown Menu -->
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle page-scroll" href="" id="navbarDropdown"
                                               role="button" aria-haspopup="true" aria-expanded="false">DETAILS</a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="Brand.jsp"><span class="item-text">BRAND
                                                    </span></a>
                                                <div class="dropdown-items-divide-hr"></div>
                                                <a class="dropdown-item" href="Displacement.jsp"><span class="item-text">DISPLACEMENT
                                                    </span></a>
                                                <div class="dropdown-items-divide-hr"></div>
                                                <a class="dropdown-item" href="Type.jsp"><span class="item-text">TYPE
                                                    </span></a>
                                                <div class="dropdown-items-divide-hr"></div>
                                                <a class="dropdown-item" href="district.jsp"><span class="item-text">DISTRICT
                                                    </span></a>
                                                <div class="dropdown-items-divide-hr"></div>
                                                <a class="dropdown-item" href="place.jsp"><span class="item-text">PLACE
                                                    </span></a>
                                            </div>
                                        </li>
                                        <!-- end of dropdown menu -->
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle page-scroll" href="" id="navbarDropdown"
                                               role="button" aria-haspopup="true" aria-expanded="false">REQUESTS</a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <a class="dropdown-item" href="VUrequests.jsp"><span class="item-text">VERIFY USER REQUESTS
                                                    </span></a>
                                                <div class="dropdown-items-divide-hr"></div>
                                                <a class="dropdown-item" href="VSrequests.jsp"><span class="item-text">VERIFY SELLER REQUESTS
                                                    </span></a>
                                                <div class="dropdown-items-divide-hr"></div>
                                                <a class="dropdown-item" href="VArequests.jsp"><span class="item-text">VERIFY ANALYSER REQUESTS
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
                            <header id="header" class="ex-header" style="height: 120px;">
                                <div class="container" style="margin-top: -6%;text-align: center;">
                                    <div class="row">
                                        <div class="col-md-12" style="width: 900px;">
                                            <h1> Two Wheels</h1>
    <style>
        h1 {
            padding: 0;
            font-weight: bold;
            font-size:100; /* You can adjust the size as per your preference */
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;        }
    </style>

                                        </div> <!-- end of col -->
                                    </div> <!-- end of row -->
                                </div> <!-- end of container -->
                            </header> <!-- end of ex-header -->
                            <!-- end of header -->
                            <section class="case-study">
                                <div class="container">
                                    <h2>Buy Bikes</h2>
                                    <p>View New Bikes and Second Hand Bikes</p>
                                    <span class="dot-dash dark">.</span>
                                </div>
                                <div class="container">
                                    <div class="case-study--sliders">
                                        <div class="case-study--left">
                                            <div class="case-study--left__textslider">
                                                <div>
                                                    <div class="case-study--left__textslider__image"><i class="fa fa-lightbulb-o"
                                                                                                        aria-hidden="true"></i></div>
                                                    <h4>View New Bikes</h4>
                                                    <p>View New Bikes and book your fav Bikes.</p>
                                                    <a href="viewveh.jsp" class="button small">View</a>
                                                </div>
                                                <div>
                                                    <div class="case-study--left__textslider__image"><i class="fa fa-lightbulb-o"
                                                                                                        aria-hidden="true"></i></div>
                                                    <h4>View Second Hand Bikes</h4>
                                                    <p>View Second Hand Bikes and book and buy your fav bikes online.</p>
                                                    <a href="Vehview.jsp" class="button small">View</a>
                                                </div>

                                            </div>
                                            <div class="case-study--left__dots"></div>
                                        </div>
                                        <div class="case-study--right">
                                            <div class="case-study--right__imageslider">
                                                <div>
                                                    <img src="../modify/2615810.jpg" alt="" />
                                                </div>
                                                <div>
                                                    <img src="../modify/2615838.jpg" alt="" />
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <script type="text/javascript">
                                window.odometerOptions = {
                                    format: '(,ddd)',
                                };
                            </script>
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
                            </script>
                            <script src="../modify/slide/js/vendor/jquery-3.1.0.min.js"></script>
                            <script src="../modify/slide/js/vendor/jquery.easing.min.js"></script>
                            <script src="../modify/slide/js/vendor/tether.js"></script>
                            <script src="../modify/slide/js/vendor/bootstrap.js"></script>
                            <script src="../modify/slide/js/vendor/slick.js"></script>
                            <script src="../modify/slide/js/vendor/isotope.pkgd.min.js"></script>
                            <script src="../modify/slide/js/vendor/odometer.min.js"></script>
                            <script src="../modify/slide/js/main.js"></script>
                            </body>
                            </html>
