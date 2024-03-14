package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write('\n');
      out.write('\n');
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
        }
      }
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
      out.write("        <title>Login Page</title>\n");
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
      out.write("        <!-- Favicon  -->\n");
      out.write("        <link rel=\"icon\" href=\"images/favicon.png\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark navbar-custom fixed-top\" height=\"120 px\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarsExampleDefault\">\n");
      out.write("                    <\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        ");

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
        
      out.write("\n");
      out.write("\n");
      out.write("        <script>alert('invalid id');</script>\n");
      out.write("\n");
      out.write("        ");

                }
            }

        
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Header -->\n");
      out.write("        <header id=\"header\" class=\"ex-2-header\">\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-lg-12\">\n");
      out.write("                    <h1>Two Wheels</h1>\n");
      out.write("                    <h1>Log In</h1>\n");
      out.write("                    <p>You don't have a password? Then please <a class=\"white\" href=\"\">Register</a></p>\n");
      out.write("                    <!-- Sign Up Form -->\n");
      out.write("                    <div class=\"form-container\">\n");
      out.write("                        <form id=\"logInForm\" data-toggle=\"validator\" data-focus=\"false\">\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <input type=\"email\" class=\"form-control-input\" name=\"txtname\" id=\"lemail\" required>\n");
      out.write("                                <label class=\"label-control\" for=\"lemail\">Email</label>\n");
      out.write("                                <div class=\"help-block with-errors\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <input type=\"password\" class=\"form-control-input\" name=\"txtpwd\" id=\"lpassword\" required>\n");
      out.write("                                <label class=\"label-control\" for=\"lpassword\">Password</label>\n");
      out.write("                                <div class=\"help-block with-errors\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-group\">\n");
      out.write("                                <button type=\"submit\" name=\"login\" class=\"form-control-submit-button\">LOG IN</button>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"form-message\">\n");
      out.write("                                <div id=\"lmsgSubmit\" class=\"h3 text-center hidden\"></div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                    </div> <!-- end of form container -->\n");
      out.write("                    <!-- end of sign up form -->\n");
      out.write("                </div> <!-- end of col -->\n");
      out.write("            </div> <!-- end of row -->\n");
      out.write("        </div> <!-- end of container -->\n");
      out.write("    </header> <!-- end of ex-header -->\n");
      out.write("    <!-- end of header -->\n");
      out.write("\n");
      out.write("    <!-- Footer -->\n");
      out.write("    <svg class=\"ex-footer-frame\" data-name=\"Layer 2\" xmlns=\"http://www.w3.org/2000/svg\" preserveAspectRatio=\"none\"\n");
      out.write("         viewBox=\"0 0 1920 79\">\n");
      out.write("    <defs>\n");
      out.write("    <style>\n");
      out.write("        .cls-2 {\n");
      out.write("            fill: #5f4def;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    </defs>\n");
      out.write("    <title>footer-frame</title>\n");
      out.write("    <path class=\"cls-2\"\n");
      out.write("          d=\"M0,72.427C143,12.138,255.5,4.577,328.644,7.943c147.721,6.8,183.881,60.242,320.83,53.737,143-6.793,167.826-68.128,293-60.9,109.095,6.3,115.68,54.364,225.251,57.319,113.58,3.064,138.8-47.711,251.189-41.8,104.012,5.474,109.713,50.4,197.369,46.572,89.549-3.91,124.375-52.563,227.622-50.155A338.646,338.646,0,0,1,1920,23.467V79.75H0V72.427Z\"\n");
      out.write("          transform=\"translate(0 -0.188)\" />\n");
      out.write("    </svg>\n");
      out.write("    <div class=\"footer\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <div class=\"footer-col first\">\n");
      out.write("                        <h4>About Two Wheels</h4>\n");
      out.write("                        <p class=\"p-small\">We're passionate about to help motorcycle and scooter consumers decide on\n");
      out.write("                            buying the\n");
      out.write("                            right two wheeler,at the right price and from the right partner</p>\n");
      out.write("                    </div>\n");
      out.write("                </div> <!-- end of col -->\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <div class=\"footer-col middle\">\n");
      out.write("                        <h4>Links 4 U </h4>\n");
      out.write("                        <ul class=\"list-unstyled li-space-lg p-small\">\n");
      out.write("                            <li class=\"media\">\n");
      out.write("                                <i class=\"fas fa-square\"></i>\n");
      out.write("                                <div class=\"media-body\">Our business <a class=\"white\" href=\"\">twowheels.com</a></div>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"media\">\n");
      out.write("                                <i class=\"fas fa-square\"></i>\n");
      out.write("                                <div class=\"media-body\">Read our <a class=\"white\" href=\"\">Terms &\n");
      out.write("                                        Conditions</a>, <a class=\"white\" href=\"\">Privacy Policy</a>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div> <!-- end of col -->\n");
      out.write("                <div class=\"col-md-4\">\n");
      out.write("                    <div class=\"footer-col last\">\n");
      out.write("                        <h4>Contact</h4>\n");
      out.write("                        <ul class=\"list-unstyled li-space-lg p-small\">\n");
      out.write("                            <li class=\"media\">\n");
      out.write("                                <i class=\"fas fa-map-marker-alt\"></i>\n");
      out.write("                                <div class=\"media-body\">Kumminiyil (H) Edadu P.O. Moolamattom</div>\n");
      out.write("                            </li>\n");
      out.write("                            <li class=\"media\">\n");
      out.write("                                <i class=\"fas fa-envelope\"></i>\n");
      out.write("                                <div class=\"media-body\"><a class=\"white\"\n");
      out.write("                                                           href=\"www.instagrm.com/its.me.albin\">insta@Albin</a> <i\n");
      out.write("                                                           class=\"fas fa-globe\"></i><a class=\"white\"\n");
      out.write("                                                           href=\"albinmathew317@gmail.com\">albinmathew317@gmail.com</a>\n");
      out.write("                                </div>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div> <!-- end of col -->\n");
      out.write("            </div> <!-- end of row -->\n");
      out.write("        </div> <!-- end of container -->\n");
      out.write("    </div> <!-- end of footer -->\n");
      out.write("    <!-- end of footer -->\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
