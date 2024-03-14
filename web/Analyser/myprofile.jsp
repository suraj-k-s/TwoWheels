
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
        <%@include file="SessionValidator.jsp" %>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        
        <form method="post">
            <div id="tab" align="center">
        <%
        String sel="select * from tbl_analyser where analyser_id='"+session.getAttribute("analyserid")+"'";
        
        ResultSet rs=con.selectCommand(sel);
        while(rs.next())
        
        {
        
        %>
        
            
            <table border="0" align="center">
                <h1>My profile</h1>
                <tr>
                    <td><img src="../Assets/analysphoto/<%=rs.getString("analyser_photo")%>" width="120" height="120"></td>
                </tr>
                <tr>
                    <td><%=rs.getString("analyser_name")%></td>
                </tr>
                <tr>
                    <td><%=rs.getString("analyser_contact")%></td>
                    </tr>
                    <tr>
                    <td><%=rs.getString("analyser_email")%></td>
                    </tr>
                    <tr>
                    <td><%=rs.getString("analyser_address")%></td>
                    </tr>
                 
                
                <%
                 }
                %>
               
            </table>
            </div>
        </form>   
    </body>
    <%@include file="Foot.jsp" %>
</html>
