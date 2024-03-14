
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vehicle gallery</title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <%

            session.setAttribute("aid", request.getParameter("aid"));
        //out.println(session.getAttribute("aid"));
        %>
        <form method="post"enctype="multipart/form-data" action="../Assets/Actionpages/productgalleryaction.jsp">  
            <table border="10" align="center">
                <h1 align="center">gallery</h1>
                <tr>
                    <td>caption</td>
                    <td><input type="text" name="caption"required="" autocompleate="off"></td>
                </tr> 
                <tr>
                    <td>file</td>
                    <td><input type="file" name="photo"required="" autocompleate="off"></td>
                </tr> 
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_submit"</td>
                </tr>
            </table>

        </form>
    </body>
    <%@include file="Foot.jsp" %>
</html>

<script src="../Assets/JQuery/jQuery.js"></script>
<script>
    function getPlace(did)
    {

        $.ajax({
            url: "../Assets/Ajaxpages/Ajaxveh.jsp?did=" + did,
            success: function(html) {
                $("#slcplace").html(html);
            }
        });
    }
</script>