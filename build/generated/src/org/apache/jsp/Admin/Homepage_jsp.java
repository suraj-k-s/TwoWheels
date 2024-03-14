package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Homepage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Admin/SessionValidator.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("        <!-- SEO Meta Tags -->\n");
      out.write("        <meta name=\"description\"\n");
      out.write("              content=\"Tivo is a HTML landing page template built with Bootstrap to help you crate engaging presentations for SaaS apps and convert visitors into users.\">\n");
      out.write("        <meta name=\"author\" content=\"Inovatik\">\n");
      out.write("\n");
      out.write("        <!-- OG Meta Tags to improve the way the post looks when you share the page on LinkedIn, Facebook, Google+ -->\n");
      out.write("        <meta property=\"og:site_name\" content=\"\" /> <!-- website name -->\n");
      out.write("        <meta property=\"og:site\" content=\"\" /> <!-- website link -->\n");
      out.write("        <meta property=\"og:title\" content=\"\" /> <!-- title shown in the actual shared post -->\n");
      out.write("        <meta property=\"og:description\" content=\"\" /> <!-- description shown in the actual shared post -->\n");
      out.write("        <meta property=\"og:image\" content=\"\" /> <!-- image link, make sure it's jpg -->\n");
      out.write("        <meta property=\"og:url\" content=\"\" /> <!-- where do you want your post to link to -->\n");
      out.write("        <meta property=\"og:type\" content=\"article\" />\n");
      out.write("\n");
      out.write("        <!-- Website Title -->\n");
      out.write("        <title>Home Page</title>\n");
      out.write("        ");

        response.setHeader("Cache-Control", "no-cache, no-store");
        if(session.getAttribute("adminid") == null)
        {
            response.sendRedirect("../");
        }
    
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Styles -->\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:400,400i,700&display=swap&subset=latin-ext\"\n");
      out.write("              rel=\"stylesheet\">\n");
      out.write("        <link href=\"../modify/css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"../modify/css/fontawesome-all.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"../modify/css/swiper.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"../modify/css/magnific-popup.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"../modify/css/styles.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0\">\n");
      out.write("        <link href=\"../modify/slide/css/vendor/bootstrap.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"../modify/slide/css/vendor/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"../modify/slide/css/vendor/slick.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"../modify/slide/css/vendor/slick-theme.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"../modify/slide/css/vendor/odometer-theme-default.css\" rel=\"stylesheet\" />\n");
      out.write("        <link href=\"../modify/slide/css/main.css\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("        <!-- Favicon  -->\n");
      out.write("        <link rel=\"icon\" href=\"images/favicon.png\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Navigation -->\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark navbar-custom fixed-top\" height=\"120 px\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("\n");
      out.write("                <!-- Text Logo - Use this if you don't have a graphic logo -->\n");
      out.write("                <!-- <a class=\"navbar-brand logo-text page-scroll\" href=\"index.html\">Tivo</a> -->\n");
      out.write("\n");
      out.write("                <!-- Image Logo -->\n");
      out.write("                <a class=\"navbar-brand logo-image\" href=\"\"><img src=\"../Assets/logo/images.png\" alt=\"logo\"></a>\n");
      out.write("\n");
      out.write("                <!-- Mobile Menu Toggle Button -->\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarsExampleDefault\"\n");
      out.write("                        aria-controls=\"navbarsExampleDefault\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-awesome fas fa-bars\"></span>\n");
      out.write("                    <span class=\"navbar-toggler-awesome fas fa-times\"></span>\n");
      out.write("                </button>\n");
      out.write("                <!-- end of mobile menu toggle button -->\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarsExampleDefault\">\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link page-scroll\" href=\"addveh.jsp\">ADD VEHICLE<span\n");
      out.write("                                    class=\"sr-only\">(current)</span></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item dropdown\">\n");
      out.write("                            <a class=\"nav-link dropdown-toggle page-scroll\" href=\"\" id=\"navbarDropdown\"\n");
      out.write("                               role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">VIEW VEHICLES</a>\n");
      out.write("                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                <a class=\"dropdown-item\" href=\"../User/viewveh.jsp\"><span class=\"item-text\">VIEW NEW VEHICLES\n");
      out.write("                                    </span></a>\n");
      out.write("                                <div class=\"dropdown-items-divide-hr\"></div>\n");
      out.write("                                <a class=\"dropdown-item\" href=\"../User/Vehview.jsp\"><span class=\"item-text\">VIEW OLD VEHICLES\n");
      out.write("                                    </span></a>\n");
      out.write("                                <li class=\"nav-item dropdown\">\n");
      out.write("                                    <a class=\"nav-link dropdown-toggle page-scroll\" href=\"\" id=\"navbarDropdown\"\n");
      out.write("                                       role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">VIEW and REPLY</a>\n");
      out.write("                                    <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"../Admin/Vcomp.jsp\"><span class=\"item-text\">COMPLAINTS\n");
      out.write("                                            </span></a>\n");
      out.write("                                        <div class=\"dropdown-items-divide-hr\"></div>\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"../Admin/Vfeed.jsp\"><span class=\"item-text\">FIEDBACKS\n");
      out.write("                                            </span></a>\n");
      out.write("                                        <!-- Dropdown Menu -->\n");
      out.write("                                        <li class=\"nav-item dropdown\">\n");
      out.write("                                            <a class=\"nav-link dropdown-toggle page-scroll\" href=\"\" id=\"navbarDropdown\"\n");
      out.write("                                               role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">DETAILS</a>\n");
      out.write("                                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                                <a class=\"dropdown-item\" href=\"Brand.jsp\"><span class=\"item-text\">BRAND\n");
      out.write("                                                    </span></a>\n");
      out.write("                                                <div class=\"dropdown-items-divide-hr\"></div>\n");
      out.write("                                                <a class=\"dropdown-item\" href=\"Displacement.jsp\"><span class=\"item-text\">DISPLACEMENT\n");
      out.write("                                                    </span></a>\n");
      out.write("                                                <div class=\"dropdown-items-divide-hr\"></div>\n");
      out.write("                                                <a class=\"dropdown-item\" href=\"Type.jsp\"><span class=\"item-text\">TYPE\n");
      out.write("                                                    </span></a>\n");
      out.write("                                                <div class=\"dropdown-items-divide-hr\"></div>\n");
      out.write("                                                <a class=\"dropdown-item\" href=\"district.jsp\"><span class=\"item-text\">DISTRICT\n");
      out.write("                                                    </span></a>\n");
      out.write("                                                <div class=\"dropdown-items-divide-hr\"></div>\n");
      out.write("                                                <a class=\"dropdown-item\" href=\"place.jsp\"><span class=\"item-text\">PLACE\n");
      out.write("                                                    </span></a>\n");
      out.write("                                            </div>\n");
      out.write("                                        </li>\n");
      out.write("                                        <!-- end of dropdown menu -->\n");
      out.write("                                        <li class=\"nav-item dropdown\">\n");
      out.write("                                            <a class=\"nav-link dropdown-toggle page-scroll\" href=\"\" id=\"navbarDropdown\"\n");
      out.write("                                               role=\"button\" aria-haspopup=\"true\" aria-expanded=\"false\">REQUESTS</a>\n");
      out.write("                                            <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("                                                <a class=\"dropdown-item\" href=\"VUrequests.jsp\"><span class=\"item-text\">VERIFY USER REQUESTS\n");
      out.write("                                                    </span></a>\n");
      out.write("                                                <div class=\"dropdown-items-divide-hr\"></div>\n");
      out.write("                                                <a class=\"dropdown-item\" href=\"VSrequests.jsp\"><span class=\"item-text\">VERIFY SELLER REQUESTS\n");
      out.write("                                                    </span></a>\n");
      out.write("                                                <div class=\"dropdown-items-divide-hr\"></div>\n");
      out.write("                                                <a class=\"dropdown-item\" href=\"VArequests.jsp\"><span class=\"item-text\">VERIFY ANALYSER REQUESTS\n");
      out.write("                                                    </span></a>\n");
      out.write("                                            </div>\n");
      out.write("                                        </li>\n");
      out.write("                                        </ul>\n");
      out.write("                                        <span class=\"nav-item\">\n");
      out.write("                                            <a class=\"btn-outline-sm\" href=\"../Guest/Login.jsp\">LOG OUT</a>\n");
      out.write("                                        </span>\n");
      out.write("                                    </div>\n");
      out.write("                            </div> <!-- end of container -->\n");
      out.write("                            </nav> <!-- end of navbar -->\n");
      out.write("                            <!-- end of navigation -->\n");
      out.write("\n");
      out.write("                            <!-- Header -->\n");
      out.write("                            <header id=\"header\" class=\"ex-header\" style=\"height: 120px;\">\n");
      out.write("                                <div class=\"container\" style=\"margin-top: -6%;text-align: center;\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-12\" style=\"width: 900px;\">\n");
      out.write("                                            <h1 style=\"padding:0\">Two Wheels</h1>\n");
      out.write("\n");
      out.write("                                        </div> <!-- end of col -->\n");
      out.write("                                    </div> <!-- end of row -->\n");
      out.write("                                </div> <!-- end of container -->\n");
      out.write("                            </header> <!-- end of ex-header -->\n");
      out.write("                            <!-- end of header -->\n");
      out.write("                            <section class=\"case-study\">\n");
      out.write("                                <div class=\"container\">\n");
      out.write("                                    <h2>Buy Bikes</h2>\n");
      out.write("                                    <p>View New Bikes and Second Hand Bikes</p>\n");
      out.write("                                    <span class=\"dot-dash dark\">.</span>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"container\">\n");
      out.write("                                    <div class=\"case-study--sliders\">\n");
      out.write("                                        <div class=\"case-study--left\">\n");
      out.write("                                            <div class=\"case-study--left__textslider\">\n");
      out.write("                                                <div>\n");
      out.write("                                                    <div class=\"case-study--left__textslider__image\"><i class=\"fa fa-lightbulb-o\"\n");
      out.write("                                                                                                        aria-hidden=\"true\"></i></div>\n");
      out.write("                                                    <h4>View New Bikes</h4>\n");
      out.write("                                                    <p>View New Bikes and book your fav Bikes.</p>\n");
      out.write("                                                    <a href=\"#\" class=\"button small\">View</a>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div>\n");
      out.write("                                                    <div class=\"case-study--left__textslider__image\"><i class=\"fa fa-lightbulb-o\"\n");
      out.write("                                                                                                        aria-hidden=\"true\"></i></div>\n");
      out.write("                                                    <h4>View Second Hand Bikes</h4>\n");
      out.write("                                                    <p>View Second Hand Bikes and book and buy your fav bikes online.</p>\n");
      out.write("                                                    <a href=\"#\" class=\"button small\">View</a>\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"case-study--left__dots\"></div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"case-study--right\">\n");
      out.write("                                            <div class=\"case-study--right__imageslider\">\n");
      out.write("                                                <div>\n");
      out.write("                                                    <img src=\"../modify/slide/Assets/img/case.jpg\" alt=\"\" />\n");
      out.write("                                                </div>\n");
      out.write("                                                <div>\n");
      out.write("                                                    <img src=\"../modify/slide/Assets/img/case.jpg\" alt=\"\" />\n");
      out.write("                                                </div>\n");
      out.write("\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </section>\n");
      out.write("                            <script type=\"text/javascript\">\n");
      out.write("                                window.odometerOptions = {\n");
      out.write("                                    format: '(,ddd)',\n");
      out.write("                                };\n");
      out.write("                            </script>\n");
      out.write("                            <!-- Footer -->\n");
      out.write("                            <svg class=\"ex-footer-frame\" data-name=\"Layer 2\" xmlns=\"http://www.w3.org/2000/svg\" preserveAspectRatio=\"none\"\n");
      out.write("                                 viewBox=\"0 0 1920 79\">\n");
      out.write("                            <defs>\n");
      out.write("                            <style>\n");
      out.write("                                .cls-2 {\n");
      out.write("                                    fill: #5f4def;\n");
      out.write("                                }\n");
      out.write("                            </style>\n");
      out.write("                            </defs>\n");
      out.write("                            <title>footer-frame</title>\n");
      out.write("                            <path class=\"cls-2\"\n");
      out.write("                                  d=\"M0,72.427C143,12.138,255.5,4.577,328.644,7.943c147.721,6.8,183.881,60.242,320.83,53.737,143-6.793,167.826-68.128,293-60.9,109.095,6.3,115.68,54.364,225.251,57.319,113.58,3.064,138.8-47.711,251.189-41.8,104.012,5.474,109.713,50.4,197.369,46.572,89.549-3.91,124.375-52.563,227.622-50.155A338.646,338.646,0,0,1,1920,23.467V79.75H0V72.427Z\"\n");
      out.write("                                  transform=\"translate(0 -0.188)\" />\n");
      out.write("                            </svg>\n");
      out.write("                            <div class=\"footer\">\n");
      out.write("                                <div class=\"container\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-4\">\n");
      out.write("                                            <div class=\"footer-col first\">\n");
      out.write("                                                <h4>About Two Wheels</h4>\n");
      out.write("                                                <p class=\"p-small\">We're passionate about to help motorcycle and scooter consumers decide on\n");
      out.write("                                                    buying the\n");
      out.write("                                                    right two wheeler,at the right price and from the right partner</p>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div> <!-- end of col -->\n");
      out.write("                                        <div class=\"col-md-4\">\n");
      out.write("                                            <div class=\"footer-col middle\">\n");
      out.write("                                                <h4>Links 4 U </h4>\n");
      out.write("                                                <ul class=\"list-unstyled li-space-lg p-small\">\n");
      out.write("                                                    <li class=\"media\">\n");
      out.write("                                                        <i class=\"fas fa-square\"></i>\n");
      out.write("                                                        <div class=\"media-body\">Our business <a class=\"white\" href=\"\">twowheels.com</a></div>\n");
      out.write("                                                    </li>\n");
      out.write("                                                    <li class=\"media\">\n");
      out.write("                                                        <i class=\"fas fa-square\"></i>\n");
      out.write("                                                        <div class=\"media-body\">Read our <a class=\"white\" href=\"\">Terms &\n");
      out.write("                                                                Conditions</a>, <a class=\"white\" href=\"\">Privacy Policy</a>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div> <!-- end of col -->\n");
      out.write("                                        <div class=\"col-md-4\">\n");
      out.write("                                            <div class=\"footer-col last\">\n");
      out.write("                                                <h4>Contact</h4>\n");
      out.write("                                                <ul class=\"list-unstyled li-space-lg p-small\">\n");
      out.write("                                                    <li class=\"media\">\n");
      out.write("                                                        <i class=\"fas fa-map-marker-alt\"></i>\n");
      out.write("                                                        <div class=\"media-body\">Kumminiyil (H) Edadu P.O. Moolamattom</div>\n");
      out.write("                                                    </li>\n");
      out.write("                                                    <li class=\"media\">\n");
      out.write("                                                        <i class=\"fas fa-envelope\"></i>\n");
      out.write("                                                        <div class=\"media-body\"><a class=\"white\"\n");
      out.write("                                                                                   href=\"www.instagrm.com/its.me.albin\">insta@Albin</a> <i\n");
      out.write("                                                                                   class=\"fas fa-globe\"></i><a class=\"white\"\n");
      out.write("                                                                                   href=\"albinmathew317@gmail.com\">albinmathew317@gmail.com</a>\n");
      out.write("                                                        </div>\n");
      out.write("                                                    </li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div> <!-- end of col -->\n");
      out.write("                                    </div> <!-- end of row -->\n");
      out.write("                                </div> <!-- end of container -->\n");
      out.write("                            </div> <!-- end of footer -->\n");
      out.write("                            <!-- end of footer -->\n");
      out.write("                            </script>\n");
      out.write("                            <script src=\"../modify/slide/js/vendor/jquery-3.1.0.min.js\"></script>\n");
      out.write("                            <script src=\"../modify/slide/js/vendor/jquery.easing.min.js\"></script>\n");
      out.write("                            <script src=\"../modify/slide/js/vendor/tether.js\"></script>\n");
      out.write("                            <script src=\"../modify/slide/js/vendor/bootstrap.js\"></script>\n");
      out.write("                            <script src=\"../modify/slide/js/vendor/slick.js\"></script>\n");
      out.write("                            <script src=\"../modify/slide/js/vendor/isotope.pkgd.min.js\"></script>\n");
      out.write("                            <script src=\"../modify/slide/js/vendor/odometer.min.js\"></script>\n");
      out.write("                            <script src=\"../modify/slide/js/main.js\"></script>\n");
      out.write("                            </body>\n");
      out.write("                            </html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
