
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>vehicle detail </title>
        <%@include file="SessionValidator.jsp" %>
    </head>
    <body>
        <%@include file="Head.jsp" %><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <form method="post">

        <h1 align="center">Vehicle Details</h1>
        <table>
            <tr>
                <%        
                    
                    String sel3 = "select * from tbl_newvehicle where vehicle_id='"+request.getParameter("vehicle_id")+"'";
                    // identify sellers vehicles(category)
                    ResultSet rs = con.selectCommand(sel3);
                    int i = 0;
                    while (rs.next()) {
                        i++;//selects value from table
                %>
                 
 
                <table align="center">

                    
                    <tr>              

                        <td>Photo</td>
                        <td><img src="../Assets/newvehicle/<%=rs.getString("vehicle_photo")%>" width="120" height="120" ></td>
                    </tr>
                    <tr>
                        <td>Bike Name</td>
                        <td><%=rs.getString("vehicle_name")%></td>
                    </tr>
                    <tr>
                        <td>Displacement</td>
                        <td><%=rs.getString("displacement_id")%></td>
                    </tr>
                    <tr>
                        <td>type</td>
                        <td><%=rs.getString("type_id")%></td>
                    </tr>
                    <tr>
                        <td>Brand</td>
                        <td><%=rs.getString("brand_id")%></td>
                    </tr>

                    <tr>
                        <td>Mileage</td>
                        <td><%=rs.getString("vehicle_mileage")%></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><%=rs.getString("vehicle_price")%></td>
                    </tr>
                    <tr>
                        <td>Power</td>
                        <td><%=rs.getString("vehicle_power")%></td>
                    </tr>
                    <tr>
                        <td>Torque</td>
                        <td><%=rs.getString("vehicle_torque")%></td>
                    </tr>
                    <tr>
                        <td>Top Speed</td>
                        <td><%=rs.getString("vehicle_maxspeed")%></td>
                    </tr>
                    <tr>
                        <td>Transmission</td>
                        <td><%=rs.getString("vehicle_transmission")%></td>
                    </tr>
                    <tr>
                        <td>Fuel Tank capacity</td>
                        <td><%=rs.getString("vehicle_fueltank")%></td>
                    </tr>
                    <tr>
                        <td>Weight</td>
                        <td><%=rs.getString("vehicle_weight")%></td>
                    </tr>
                    <tr>
                        <td>Height </td>
                        <td><%=rs.getString("vehicle_height")%></td>
                    </tr>


                </table>
                <%
                    }
                %>
            </tr></table></form><br><br><br><br><br><br><br><br><br><br><br><br>
                <%@include file="Foot.jsp" %>
                </body>
                </html>
