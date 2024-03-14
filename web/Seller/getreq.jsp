
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Get request</title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        
        <div align="center" id="tab">
        <table align="center">
        <h1 align="center">Get request</h1>
        <%

            String sel3 = "select * from tbl_payment p inner join tbl_user u on u.user_id=p.user_id inner join tbl_usedvehicle v on v.vehicle_id=p.vehicle_id";
            // identify sellers vehicles(category)
            ResultSet rs = con.selectCommand(sel3);
            int i = 0;
            while (rs.next()) {
                i++;//selects value from table
%>
<td>
                <p align="center" style="border: 5px solid black;margin: 2px;padding: 30px"> 
                    <%=rs.getString("user_name")%><br>
                    <%=rs.getString("vehicle_name")%><br>
                   <%=rs.getString("request_date")%><br>  
                   <a href="Chat/Chat.jsp?cid=<%=rs.getString("user_id")%>">CHAT to User</a><br>
                   <%
if(rs.getString("payment_status").equals("0")){
    %>
      Payment Not Yet done
    
    <%
}
else if(rs.getString("payment_status").equals("1")){
    %>
      Payment completed
    
    <%
}
%>
                </p>
            </td>
    <%
                    if (i == 3) {
                        out.println("</tr><tr>");
                        i = 0;// 4 nos at max at the row
                    }
                }
            %>
    </table>
        </div>
</form>
</body>
<%@include file="Foot.jsp" %>
</html>
