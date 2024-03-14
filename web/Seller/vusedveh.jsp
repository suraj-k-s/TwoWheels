 
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View used vehicle</title>
        <%@include file="SessionValidator.jsp" %>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <%
             if(request.getParameter("did")!=null)
            {
                String del="delete from tbl_usedvehicle where vehicle_id='"+request.getParameter("did")+"'";
                con.executeCommand(del);
                response.sendRedirect("vusedveh.jsp");
            }
          
        %>
        <div align="center" id="tab">
        <form method="post">
            <h1>View used vehicle</h1> 

            <table border="1" cellpadding="10" align="center">
                <tr>
                    <td>Sl.no</td>
                    <td>Name</td>
                    <td>type</td>
                    <td>Displacement</td>
                    <td>Brand</td>
                    <td>photo</td>
                    <td>rc</td>
                    <td>Price</td>
                    <td>Year</td>
                    <td>Audometer</td>
                    <td>Option</td>
                </tr>
                <%   
            String sel1 = "select * from tbl_usedvehicle where seller_id='"+session.getAttribute("sellerid")+"'";
                    // identify sellers vehicles(category)
                    ResultSet rs1 = con.selectCommand(sel1);
                    int i=0;      
                    while (rs1.next()) {
              
                        i++;//selects value from table
%> 
                <tr>
                    <td><%=i%></td>
                    <td><%=rs1.getString("vehicle_name")%></td>
                    <td><%=rs1.getString("type_id")%></td>
                    <td><%=rs1.getString("displacement_id")%></td>
                    <td><%=rs1.getString("brand_id")%></td>
                    <td><img src="../Assets/usedveh/<%=rs1.getString("vehicle_photo")%>" width="120" height="120" ></td>
                    <td><img src="../Assets/usedveh/<%=rs1.getString("vehicle_rc")%>" width="120" height="120"></td>
                    <td><%=rs1.getString("vehicle_price")%></td>
                    <td><%=rs1.getString("vehicle_year")%></td>
                    <td><%=rs1.getString("vehicle_audometer")%></td>               
                    <td><a href="vusedveh.jsp?did=<%=rs1.getString("vehicle_id")%>">Delete</a>/
                        <a href="gallery.jsp?gid=<%=rs1.getString("vehicle_id")%>">Add Gallery</a>/
                        <a href="ViewGallery.jsp?vgid=<%=rs1.getString("vehicle_id")%>">View Gallery</a>
                    </td>


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
