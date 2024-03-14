<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add used Vehicle</title>
        <%@include file="SessionValidator.jsp" %>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <div id="tab" align="center">
        <h1>Used Vehicle</h1>
        <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/usedvehaction.jsp">
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
                <tr>
                <td>Photo</td>
                <td><input type="file" name="photo"required="" autocompleate="off"></td>
                </tr> 
                <tr>
                    <td>R C</td>
                    <td><input type="file" name="rc"required="" autocompleate="off"></td>
                </tr> 
                <tr>

                    <td>Price</td>
                    <td><input type="text" name="price"required=""autocompleate="off"></td>
                </tr>
                <tr>
                    <td>Year</td>
                    <td><input type="text" name="year"required=""autocompleate="off"></td>
                </tr>
                <tr>
                    <td>Vehicle Audo meter</td>
                    <td><input type="text" name="audo"required="" autocompleate="off"></td>
                </tr>

                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_submit" value="ADD"></td>
                </tr>

            </table>
        </form>
        </div>
                            <%@include file="Foot.jsp" %>
    </body>
</html>
