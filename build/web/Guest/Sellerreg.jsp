
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seller Registration</title>
    </head>
    <body>
        <h1 align="center">Seller Registration</h1>


        <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/sellerregaction.jsp">
            <table border="1" align="center">

                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name"required="" autocompleate="off"></td>
                </tr> 
                <tr>
                    <td>Contact</td>
                    <td><input type="text" name="contact"required="" autocompleate="off"></td>
                </tr>  
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email"required="" autocompleate="off"></td>
                </tr> 
                <tr>
                    <td>Address</td>
                    <td><textarea name="address"></textarea></td>
                </tr> 
                <td>Photo</td>
                <td><input type="file" name="photo"required="" autocompleate="off"></td>
                </tr> 
                <tr>
                    <td>Proof</td>
                    <td><input type="file" name="proof"required="" autocompleate="off"></td>
                </tr> 
                <tr>
                <td>District</td>
                <td>
                    <select name="district" onchange="getPlace(this.value)">
                        <option>select</option>
                        <%
                            String select="select * from tbl_district";
                            ResultSet rs=con.selectCommand(select);
                            while(rs.next())
                            {
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
                    <td><input type="password" name="pass"required="" autocompleate="off"></td>
                </tr>
                <tr>
                    <td>re Password</td>
                    <td><input type="password" name="repass"required="" autocompleate="off"></td>
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
	  url:"../Assets/Ajaxpages/Ajaxplace.jsp?id="+did,
	  success: function(html){
                    $("#slctplace").html(html);
	  }
	});
}
</script>