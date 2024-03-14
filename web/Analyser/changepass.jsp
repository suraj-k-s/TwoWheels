
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <%@include file="SessionValidator.jsp" %>
    </head>
    <body>
        <%
           if(request.getParameter("btn_submit")!=null)
           {
               String sel = "select * from tbl_analyser where analyser_password='" + request.getParameter("current")+"' and analyser_id='" + session.getAttribute("analyserid")+"'";
               ResultSet rs=con.selectCommand(sel);
               if (!rs.next()){
             %>
             <script>alert('invalid password');</script>
       
        <%      
               }
               else{
                  if(request.getParameter("change").equals(request.getParameter("confirm"))){
                 String upd="update tbl_analyser set analyser_password='" + request.getParameter("change")+"' where analyser_id='" + session.getAttribute("analyserid")+"'";
                 con.executeCommand(upd);
                // out.println(upd);
               
               
        %>
           <script>alert('password changed');</script>
           <% 
                  }
                  else{
                      %> 
           
             <script>alert('password mismatch');</script>
           <%
                  }
               }
           }
           %>
           <%@include file="Head.jsp" %><br><br><br><br>
           <div id="tab">
        <h1 align="center">Change Password</h1>
        <form method="post" >
        <table align="center">
            <tr>
                <td>my password</td>
                <td><input type="text" name="current"required="" autocompleate="off"></td>
                </tr> 
                <tr>
                <td>change password</td>
                 <td><input type="text" name="change"required="" autocompleate="off"></td>
                </tr>
                <tr>
                <td>confirm password</td>
                 <td><input type="text" name="confirm"required="" autocompleate="off"></td>
            </tr>
             <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_submit" value="SUBMIT"></td>
                </tr>
        </table>
        </form>
           </div><br><br><br><br><br><br><br>
        <%@include file="Foot.jsp" %>
    </body>
</html>
