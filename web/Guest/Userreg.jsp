<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
    </head>
    <body>
        <h1>User Registration</h1>


        <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/userregaction.jsp">
            <table border="1" align="center">

                <tr>
                    <td>Name</td>
                    <td><input type="text" name="username"required="" autocompleate="off"></td>
                </tr> 
                <tr>
                    <td>Contact</td>
                    <td><input type="text" name="contact"required="" pattern="[6-9]{1}[0-9]{9}" autocompleate="off"></td>
                </tr>  
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="useremail"required="" autocompleate="off"></td>
                </tr> 
                <tr>
                    <td>Address</td>
                    <td><textarea name="useraddress" required=""></textarea></td>
                </tr> 
                <td>Photo</td>
                <td><input type="file" name="userphoto"required="" autocompleate="off"></td>
                </tr> 
                <tr>
                    <td>Proof</td>
                    <td><input type="file" name="userproof"required="" autocompleate="off"></td>
                </tr> 
                <tr>
                    <td>District</td>
                    <td>
                        <select name="district" onchange="getPlace(this.value)">
                            <option>select</option>
                            <%
                                String select = "select * from tbl_district";
                                ResultSet rs = con.selectCommand(select);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("district_id")%>"><%=rs.getString("district_name")%></option>

                            <%
                                }


                            %>
                        </select>


                    </td>
                </tr>
                <tr>

                    <td>Place</td>
                    <td><select id="slctplace"><option>---select---</option></select></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="userpass"required="" pattern="[A-Za-z0-9!@#$%^&*]{5,8}" autocompleate="off"></td>
                </tr>
                <tr>
                    <td>re Password</td>
                    <td><input type="password" name="userrepass"required="" autocompleate="off"></td>
                </tr>
                <table> <table align="center">
                        <tr>
                            <td><input type="submit" name="btn_submit" value="SAVE"</td>
                        </tr>
                        </tr>
                    </table>
                </table>
        </form>
    </body>
</html>

<script src="../Assets/JQ/jQuery.js"></script>
<script>
                        function getPlace(did)
                        {

                            $.ajax({
                                url: "../Assets/Ajaxpages/Ajaxplace.jsp?id="+did,
                                success: function(html) {
                                    $("#slctplace").html(html);
                                }
                            });
                        }
</script>