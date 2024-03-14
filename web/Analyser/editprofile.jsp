
<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="form.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
        <%@include file="SessionValidator.jsp" %>
    </head>
    <body>
        <%
            if (request.getParameter("btnsave") != null) {
                String upd = "update tbl_analyser set analyser_name='" + request.getParameter("txtname") + "',analyser_contact= '" + request.getParameter("txtcon") + "',analyser_address= '" + request.getParameter("txtaddress") + "',analyser_email= '" + request.getParameter("txtemail") + "' where analyser_id='" + session.getAttribute("analyserid") + "'";
                con.executeCommand(upd);
                //out.println(upd);

        %>
        <script>
            alert("value updated successfully");

        </script>

        <%        
            }
        %>
        <%@include file="Head.jsp" %>
        <form method="post">
            <div id="tab" align="center">


            <table border="0" align="center">
                <%
                    String sel = "select * from tbl_analyser where analyser_id='" + session.getAttribute("analyserid") + "'";

                    ResultSet rs = con.selectCommand(sel);
                    while (rs.next()) {

                %>
                <tr>
                    <td>NAME</td>
                    <td>
                        <input type="text" name="txtname" autocomplete="off" value="<%=rs.getString("analyser_name")%>" required="">
                    </td> </tr>
                <tr>
                    <td>CONTACT</td>
                    <td> 
                        <input type="text" name="txtcon" autocomplete="off" value="<%=rs.getString("analyser_contact")%>" required="" pattern="[6-9]{1}[0-9]{9}">
                    </td> 
                </tr>
                <tr>
                    <td>ADDRESS</td>
                    <td> 
                        <textarea name="txtaddress"><%=rs.getString("analyser_address")%></textarea>
                    </td>  
                </tr>
                <tr>
                    <td>EMAIL</td>
                    <td> 
                        <input type="email" name="txtemail" autocomplete="off" value="<%=rs.getString("analyser_email")%>" required="">
                    </td>  
                </tr>
                <a align="center" href="changepass.jsp">Change Pasword</a>

                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btnsave" value="save"></td>


                </tr>
                <%
                    }
                %>

            </table>
            </div>
        </form>
    </body>
</html>
