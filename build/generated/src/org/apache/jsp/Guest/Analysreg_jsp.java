package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Analysreg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Analyser Registration</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Analyser Registration</h1>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <form method=\"post\" enctype=\"multipart/form-data\" action=\"../Assets/Actionpages/analyserregaction.jsp\">\n");
      out.write("            <table border=\"1\" align=\"center\">\n");
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td><input type=\"text\" name=\"username\"required=\"\" autocompleate=\"off\"></td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                    <td>Contact</td>\n");
      out.write("                    <td><input type=\"text\" name=\"contact\"required=\"\" autocompleate=\"off\"></td>\n");
      out.write("                </tr>  \n");
      out.write("                <tr>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td><input type=\"text\" name=\"useremail\"required=\"\" autocompleate=\"off\"></td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                    <td>Address</td>\n");
      out.write("                    <td><textarea name=\"useraddress\"></textarea></td>\n");
      out.write("                </tr> \n");
      out.write("                <td>Photo</td>\n");
      out.write("                <td><input type=\"file\" name=\"analysphoto\"required=\"\" autocompleate=\"off\"></td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                    <td>Proof</td>\n");
      out.write("                    <td><input type=\"file\" name=\"analysproof\"required=\"\" autocompleate=\"off\"></td>\n");
      out.write("                </tr> \n");
      out.write("                <tr>\n");
      out.write("                <td>District</td>\n");
      out.write("                <td>\n");
      out.write("                    <select name=\"district\" onchange=\"getPlace(this.value)\">\n");
      out.write("                        <option>select</option>\n");
      out.write("                        ");

                            String select="select * from tbl_district";
                            ResultSet rs=con.selectCommand(select);
                            while(rs.next())
                            {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs.getString("district_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("district_name"));
      out.write("</option>\n");
      out.write("                                    \n");
      out.write("                                    ");

                                            }
                            
                            
                            
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                \n");
      out.write("                <td>Place</td>\n");
      out.write("                <td><select id=\"slctplace\"><option>---select---</option></select></td>\n");
      out.write("            </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"userpass\"required=\"\" autocompleate=\"off\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>re Password</td>\n");
      out.write("                    <td><input type=\"password\" name=\"userrepass\"required=\"\" autocompleate=\"off\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <table> <table align=\"center\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td><input type=\"submit\" name=\"btn_submit\" value=\"SAVE\"</td>\n");
      out.write("                        </tr>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<script src=\"../Assets/JQ/jQuery.js\"></script>\n");
      out.write("<script>\n");
      out.write("function getPlace(did)\n");
      out.write("{\n");
      out.write("\n");
      out.write("\t$.ajax({\n");
      out.write("\t  url:\"../Assets/Ajaxpages/Ajaxplace.jsp?id=\"+did,\n");
      out.write("\t  success: function(html){\n");
      out.write("                    $(\"#slctplace\").html(html);\n");
      out.write("\t  }\n");
      out.write("\t});\n");
      out.write("}\n");
      out.write("</script>");
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
