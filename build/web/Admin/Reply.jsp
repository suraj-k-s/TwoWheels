<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<!DOCTYPE html>
<html>
<%@include file="Head.jsp" %><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <body>
   
           <%
               
               if(request.getParameter("aid")!=null){
                   session.setAttribute("id", request.getParameter("aid"));
               }
                if (request.getParameter("btn_save") != null)
                {
                String ins = "update tbl_complaint set complaint_reply ='" + request.getParameter("txt_reply") + "',reply_date=curdate(),complaint_status='1' where complaint_id='"+request.getParameter("aid")+"'";
                //out.println(ins);
                con.executeCommand(ins);
            }
        %>

        <form method="post" >
            <table border="1" align="center">
                <tr>
                    <td> Reply</td>
                     
                    <td> 
                        <input type="text" name="txt_reply" autocomplete="off" >
                        
                    </td>
                </tr>
                <br><br>
   
                    <td>
                        <input type="submit" name="btn_save" value="Save"> 
                        <input type="submit" name="btn_cancel" value="Cancel">
                    </td> 
                </tr>
            </table>   
        </form>
 <!-- Footer --><br><br><br><br><br><br><br><br><br><br><br><br>
 <%@include file="Foot.jsp" %>
    </body>
</html>