
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
         <link rel="stylesheet" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehicle gallery</title>
    </head>
    <body>
        <%
        if(request.getParameter("gid")!=null){
            session.setAttribute("gid", request.getParameter("gid"));
        }
        
        %>
        <%@include file="Head.jsp" %>
        <div align=center id="tab" >  
            <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/productgalleryaction.jsp">
                <table border="1">
                    <tr>
                        <td>Caption</td>
                        <td>
                            <input type="text" name="caption" required="">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Image
                        </td>
                        <td>
                            <input type="file" name="file" required="">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" name="btnsave" value="Save">
                        </td>
                    </tr>
                </table>
                
                
            </form>
        </div>
    </body>
    <%@include file="Foot.jsp" %>
</html>

