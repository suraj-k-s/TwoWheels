<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rate and Review</title>
    </head>
    <body>
        <%@include file="Head.jsp" %>
        <h1 align="center">Rate and review</h1>
        <%
            if(request.getParameter("vehid")!=null){
                session.setAttribute("vehid", request.getParameter("vehid"));
            }
           
                if (request.getParameter("btnsave") != null)
                
            {
                String ins = "insert into tbl_review(review_description,analyser_id,review_date,vehicle_id)values('" + request.getParameter("txtreview") + "','" + session.getAttribute("analyserid") + "',curdate(),'"+session.getAttribute("vehid")+"')";
                //out.println(ins);
                con.executeCommand(ins);
            }
        %>
        
         <%     
            String sel = "select * from tbl_newvehicle where vehid='" + request.getParameter("vehicle_id") + "'";
                // identify sellers vehicles(category)
                ResultSet rs = con.selectCommand(sel);
                int i = 0;
                while (rs.next()) {
                    i++;//selects value from table
%>
            <td>
                <p align="center" style="border: 5px solid black;margin: 2px;padding: 10px"> 
                    <img src="../Assets/newvehicle/<%=rs.getString("vehicle_photo")%>" width="150" height="150" ><br> 
                    <%=rs.getString("vehicle_name")%><br>
            </td>
            <%
                }
                    %>
                    <form method="post">
                        <div align="center" id="tab">
            <table align="center" border="10" cellpadding="15" >

                <tr>            
                    <td>Review</td>
                    <td> 
                        <textarea name="txtreview" autocomplete="off"></textarea>
                    </td>  
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btnsave" value="Submit"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btncancel" value="Cancel"></td>
                </tr>
            </table>
                        </div>
        </form>
    </body>
    <%@include file="Foot.jsp" %>
</html>
