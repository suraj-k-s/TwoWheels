
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>feedbacks</title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <%
             if(request.getParameter("aid")!=null){
                   session.setAttribute("id", request.getParameter("aid"));
               }
     
                if (request.getParameter("btnsave") != null)
                
            {
                String ins = "insert into tbl_feedback(feedback_description,user_id,feedback_date)values('" + request.getParameter("txtcomplaint") + "','" + session.getAttribute("userid") + "',curdate())";
                //out.println(ins);
                con.executeCommand(ins);
            }
        %>
        <h1 align="center">feedbacks</h1>
        <form method="post">
            <div id="tab" align="center">
            <table align="center" border="10" cellpadding="15" >

                <tr>            
                    <td>feedbacks</td>
                    <td> 
                        <textarea name="txtcomplaint" autocomplete="off"></textarea>
                    </td>  
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btnsave" value="Submit"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btncancel" value="Cancel"></td>
                </tr>
            </table>
            </div>
        </form>
    </body>
    <%@include file="Foot.jsp" %>
</html>
