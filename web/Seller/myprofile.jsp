
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
        String sel="select * from tbl_seller where seller_id='"+session.getAttribute("sellerid")+"'";
        
        ResultSet rs=con.selectCommand(sel);
        while(rs.next())
        
        {
        
        %>
        
            
            <table border="0" align="center">
                <h1>My profile</h1>
                <tr>
                <td><img src="../Assets/userphoto/<%=rs.getString("seller_photo")%>" width="120" height="120"></td>
                </tr>
                <tr>
                    <td><%=rs.getString("seller_name")%></td>
                </tr>
                <tr>
                    <td><%=rs.getString("seller_contact")%></td>
                    </tr>
                    <tr>
                    <td><%=rs.getString("seller_email")%></td>
                    </tr>
                    <tr>
                    <td><%=rs.getString("seller_address")%></td>
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
