
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>View reply</title>
        </head>
        <body>
        <%@include file="Head.jsp" %>
        <div id="tab" align="center">
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
                    String sel1 = "select * from tbl_complaint where analyser_id='" + session.getAttribute("analyserid") + "'";
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
            
                <%@include file="Foot.jsp" %>
    </body>
</html>
