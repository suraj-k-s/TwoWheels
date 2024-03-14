
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> VIEW Vehicle Details</title>
        <%@include file="SessionValidator.jsp" %>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <div id="tab" align="center">
        <h1 align="center">Vehicle Details</h1>
        
         <table align="center">
        <tr>
            <%     
            
            
            String sel3 = "select * from tbl_newvehicle";
                // identify sellers vehicles(category)
                ResultSet rs = con.selectCommand(sel3);
                int i = 0;
                while (rs.next()) {
                    i++;//selects value from table
%>

            <td>
                <p style="border: 5px solid black;margin: 2px;padding: 30px"> 
                    <img src="../Assets/newvehicle/<%=rs.getString("vehicle_photo")%>"width="150" height="150" ><br> 
                    <%=rs.getString("vehicle_name")%><br>
                    <%=rs.getString("vehicle_price")%><br>
                   <%=rs.getString("vehicle_mileage")%><br>
                    <%=rs.getString("vehicle_power")%><br>
                   <%=rs.getString("vehicle_torque")%><br>
                   <a href="viewvehmore.jsp?vehicle_id=<%=rs.getString("vehicle_id")%>">view more details</a><br>
                   <a href="../User/ratereview.jsp?vehicle_id=<%=rs.getString("vehicle_id")%>"> view vehicle reviews</a><br>
                   <a href="ratereview.jsp?vehid=<%=rs.getString("vehicle_id")%>">review vehicle</a>
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
</body>
</html>

