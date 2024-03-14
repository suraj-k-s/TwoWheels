<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link rel="stylesheet" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rate and Review</title>
    </head>
    <body>
        <h1 align="center">Rate and review</h1>
    <form method="post">
        <div align="center" id="tab">
<table border="1" cellpadding="10" align="center">

            <tr>
                <td> Date</td>
                
                <td> Content</td>
            </tr>
           
     <%
            String sel="select * from tbl_review where vehicle_id='"+request.getParameter("rvid")+"'";
           // out.println(sel);
            ResultSet rs=con.selectCommand(sel);
            int i=0;
            while(rs.next())
            {
               i++;
                %>

            <tr>
                <td><%=rs.getString("review_date")%></td>
                
                <td><%=rs.getString("review_description")%></td>
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
