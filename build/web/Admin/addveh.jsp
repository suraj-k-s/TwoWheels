<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>Add New Vehicles</title>
        <%@include file="SessionValidator.jsp" %>

       
    </head>
    <body>
        <%@include file="Head.jsp" %><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <!-- Navigation -->
       
        <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/newvehaction.jsp">
              <table border="10" align="center">
                <tr>
                    <td>Vehicle Name</td>
                    <td><input type="text" name="name" required="" autocompleate="off"></td>
                </tr> 
                <tr>
                    <td>Type</td>
                    <td>
                        <select name="type" onchange="getPlace(this.value)">
                            <option>select</option>
                            <%
                                String select = "select * from tbl_type";
                                ResultSet rs = con.selectCommand(select);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("type_id")%>"><%=rs.getString("type_name")%></option>

                            <%
                                }


                            %>
                        </select>


                    </td>          

                </tr>  
                <tr>
                    <td>Displacement</td>
                    <td>
                        <select name="displacement" onchange="getPlace(this.value)">
                            <option>select</option>
                            <%                                String sel1 = "select * from tbl_displacement";
                                ResultSet rs1 = con.selectCommand(sel1);
                                while (rs1.next()) {
                            %>
                            <option value="<%=rs1.getString("displacement_id")%>"><%=rs1.getString("displacement_name")%></option>

                            <%
                                }


                            %>
                        </select>
                    </td>     
                </tr> 
                <tr>
                    <td>Brand</td>
                    <td>
                        <select name="brand" onchange="getPlace(this.value)">
                            <option>select</option>
                            <%                                String sel2 = "select * from tbl_brand";
                                ResultSet rs2 = con.selectCommand(sel2);
                                while (rs2.next()) {
                            %>
                            <option value="<%=rs2.getString("brand_id")%>"><%=rs2.getString("brand_name")%></option>

                            <%
                                }


                            %>
                        </select>
                    </td>   
                </tr> 
                                    
                
                <td>Photo</td>
                <td><input type="file" name="photo"required="" autocompleate="off"></td>
                </tr> <tr>
                    <td>Mileage</td>
                    <td><input type="text" name="price"required=""autocompleate="off"></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="text" name="price"required=""autocompleate="off"></td>
                </tr>
                <tr>
                    <td>Power</td>
                    <td><input type="text" name="power"required=""autocompleate="off"></td>
                </tr>
                <tr>
                    <td>Torque</td>
                    <td><input type="text" name="torque"required="" autocompleate="off"></td>
                </tr>
                <tr>
                    <td>Top Speed</td>
                    <td><input type="text" name="topspeed"required="" autocompleate="off"></td>
                </tr>
                <tr>
                    <td>Transmission</td>
                    <td><input type="text" name="transmission"required="" autocompleate="off"></td>
                </tr>
                <tr>
                    <td>Fuel Tank capacity</td>
                    <td><input type="text" name="fuelcap"required="" autocompleate="off"></td>
                </tr>
                <tr>
                    <td>Weight</td>
                    <td><input type="text" name="weight"required="" autocompleate="off"></td>
                </tr>
                <tr>
                    <td>Height </td>
                    <td><input type="text" name="hight"required="" autocompleate="off"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_submit" value="ADD"></td>
                </tr>
                </table>
        </form><br><br><br><br><br><br><br><br><br><br><br><br><br>
                            <%@include file="Foot.jsp" %>
    </body>
</html>
