
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
                <a class="navbar-brand logo-image" href="Homepage.jsp"><img src="../Assets/logo/images.png" alt="logo"></a>

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
                                            <h1 style="padding:0">Two Wheels</h1>

                                        </div> <!-- end of col -->
                                    </div> <!-- end of row -->
                                </div> <!-- end of container -->
                            </header>