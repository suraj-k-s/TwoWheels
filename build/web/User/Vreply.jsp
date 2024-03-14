
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
              <link rel="stylesheet" href="form.css">
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>View reply</title>
        </head>
        <body>
        <%@include file="Head.jsp" %>
        
        <div align="center" id="tab">
            <h1 align="center">View Reply</h1>
            <form method="post" >
                <table border="1" align="center">
                    <tr>
                        <td> Complaint</td>
                        <td> complaint date</td>
                        <td> Reply</td>
                        <td> Reply date</td>
                    </tr>
                <%
                    String sel1 = "select * from tbl_complaint where user_id='" + session.getAttribute("userid") + "'";
                    // identify sellers vehicles(category)
                    ResultSet rs1 = con.selectCommand(sel1);
                    int i = 0;
                    while (rs1.next()) {

                        i++;//selects value from table
                %> 
                <tr>
                    <td><%=rs1.getString("complaint_description")%></td>
                    <td><%=rs1.getString("complaint_date")%></td>
                    <td><%=rs1.getString("complaint_reply")%></td>
                    <td><%=rs1.getString("reply_date")%></td>
                </tr>
                <%
                    }
                %>
            </table>   
            </form>
        </div>
        
    </body>
    <%@include file="Foot.jsp" %>
</html>
