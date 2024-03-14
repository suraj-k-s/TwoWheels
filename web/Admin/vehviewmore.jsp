
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>More details of used bike</title>
    </head>
    <body>
        <h1 align="center">More details of used bike</h1>
         
                <%
                    if (request.getParameter("eid") != null) {
                        String ins = "insert into tbl_payment(vehicle_id,user_id,request_date)values('" + request.getParameter("eid") + "','" + session.getAttribute("userid") + "',curdate())";
                        out.println(ins);
                        con.executeCommand(ins);
                    }

                    String sel3 = "select * from tbl_usedvehicle  p inner join tbl_seller d on d.seller_id=p.seller_id inner join tbl_displacement v on v.displacement_id=p.displacement_id inner join tbl_brand b  on b.brand_id=p.brand_id inner join tbl_type t on t.type_id=p.type_id where vehicle_id='" + request.getParameter("vehicle_id") + "'";
                    // identify sellers vehicles(category)
                    ResultSet rs = con.selectCommand(sel3);
                    int i = 0;
                    while (rs.next()) {
                        i++;//selects value from table
%>
            <form Method="post">
                <table align="center">
                    <tr>              

                        <td>Photo</td>
                        <td><img src="../Assets/usedveh//<%=rs.getString("vehicle_photo")%>" width="120" height="120" ></td>
                    </tr>
                    <tr>
                        <td>Bike Name</td>
                        <td><%=rs.getString("vehicle_name")%></td>
                    </tr>
                    <tr>
                        <td>Displacement</td>
                        <td><%=rs.getString("displacement_name")%></td>
                    </tr>
                    <tr>
                        <td>type</td>
                        <td><%=rs.getString("type_name")%></td>
                    </tr>
                    <tr>
                        <td>Brand</td>
                        <td><%=rs.getString("brand_name")%></td>
                    </tr>
                    <tr>
                        <td>price</td>
                        <td><%=rs.getString("vehicle_price")%></td>
                    </tr>
                    <tr>
                        <td>year</td>
                        <td><%=rs.getString("vehicle_year")%></td>
                    </tr>
                    <tr>
                        <td>Audometer</td>
                        <td><%=rs.getString("vehicle_audometer")%></td>
                    </tr>
                    <tr>
                        <td>Seller</td>
                        <td><%=rs.getString("seller_name")%></td>
                    </tr>
                    <tr>
                        <td>
                        <a href="vehviewmore.jsp?eid=<%=rs.getString("vehicle_id")%>">Sent Request</a>
                        </td>
                    </tr>
                </table>
            </form>
            <%
                }
            %>
    </body>
</html>
