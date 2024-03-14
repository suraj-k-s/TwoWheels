
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link rel="stylesheet" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Vehicles</title>
        <%@include file="SessionValidator.jsp" %>
    </head>

    <body>
        <%@include file="Head.jsp" %>
        
        <div align="center" id="tab">
        <h1 align="center">View Vehicles</h1>
        <table>
    <tr>
        <td>District</td>
        <td>
            <select name="district" id="slctdistrict" onchange="getPlace(this.value), getData()">
                <option value="">select</option>
                <%                    String select = "select * from tbl_district";
                    ResultSet rs2 = con.selectCommand(select);
                    while (rs2.next()) {
                %>
                <option value="<%=rs2.getString("district_id")%>"><%=rs2.getString("district_name")%></option>

                <%
                    }


                %>
            </select>
        </td>
    </tr>
    <td>

        <td>Place</td>
        <td><select id="slctplace" onchange="getData(this.value)"><option value="">---select---</option></select></td>
    </td>
    <tr>
        <td>Type</td>
        <td>
            <select name="type" id="slcttype" onchange="getData(this.value)">
                <option value="">select</option>
                <%                                String selec = "select * from tbl_type";
                    ResultSet rs1 = con.selectCommand(selec);
                    while (rs1.next()) {
                %>
                <option value="<%=rs1.getString("type_id")%>"><%=rs1.getString("type_name")%></option>

                <%
                    }


                %>
            </select>


        </td>          

    </tr>  
    <tr>
        <td>Displacement</td>
        <td>
            <select name="displacement" id="slctdisplacement" onchange="getData(this.value)">
                <option value="">select</option>
                <%                                String sel1 = "select * from tbl_displacement";
                    ResultSet rs3 = con.selectCommand(sel1);
                    while (rs3.next()) {
                %>
                <option value="<%=rs3.getString("displacement_id")%>"><%=rs3.getString("displacement_name")%>></option>

                <%
                    }


                %>
            </select>
        </td>     
    </tr> 
    <tr>
        <td>Brand</td>
        <td>
            <select name="brand" id="slctbrand" onchange="getData(this.value)">
                <option value="">select</option>
                <%                                String sel2 = "select * from tbl_brand";
                    ResultSet rs4 = con.selectCommand(sel2);
                    while (rs4.next()) {
                %>
                <option value="<%=rs4.getString("brand_id")%>"><%=rs4.getString("brand_name")%></option>

                <%
                    }


                %>
            </select>
        </td>   
    </tr> 
    </table>
    <div id="search">
        <table align="center">
            <tr>
                <%                    String sel3 = "select * from tbl_usedvehicle";
                    // identify sellers vehicles(category)
                    ResultSet rs = con.selectCommand(sel3);
                    int i = 0;
                    while (rs.next()) {
                        i++;//selects value from table
                %>

                <td>
                    <p style="border: 1px solid black;margin: 2px;padding: 10px"> 
                        <img src="../Assets/usedveh/<%=rs.getString("vehicle_photo")%>"width="120" height="120" ><br>
                        <a href="../Assets/usedveh/<%=rs.getString("vehicle_rc")%>" download>Download RC</a><br> 
                        <%=rs.getString("vehicle_name")%><br>
                        <%=rs.getString("vehicle_price")%><br>
                        <%=rs.getString("vehicle_year")%><br>
                        <%=rs.getString("vehicle_audometer")%><br>
                        <a href="vehviewmore.jsp?vehicle_id=<%=rs.getString("vehicle_id")%>">view more details</a>/
                        <a href="gallery.jsp?vgid=<%=rs.getString("vehicle_id")%>">View Gallery</a>/
                        <a href="ratereview.jsp?rvid=<%=rs.getString("vehicle_id")%>">View Review</a>
                    </p>
                </td>


                <%
                        if (i == 4) {
                            out.println("</tr><tr>");
                            i = 0;// 4 nos at max at the row
                        }
                    }
                %>
        </table>
    </div>
        </div>
</body>
<%@include file="Foot.jsp" %>
</html>
<script src="../Assets/JQ/jQuery.js"></script>
<script>
                function getPlace(did)
                {

                    $.ajax({
                        url: "../Assets/Ajaxpages/Ajaxplace.jsp?id=" + did,
                        success: function(html) {
                            $("#slctplace").html(html);
                        }
                    });
                }


                function getData()
                {
                    var dsid = document.getElementById("slctdistrict").value;
                    var plid = document.getElementById("slctplace").value;
                    var tyid = document.getElementById("slcttype").value;
                    var diid = document.getElementById("slctdisplacement").value;
                    var brid = document.getElementById("slctbrand").value;
                    $.ajax({
                        url: "../Assets/Ajaxpages/ajaxveh.jsp?dsid=" + dsid + "&plid=" + plid + "&tyid=" + tyid + "&diid=" + diid + "&brid=" + brid,
                        success: function(html) {
                            $("#search").html(html);
                        }
                    });
                }

</script>
