
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         
        <!-- Website Title -->
        <title>Complaint View</title>
        <%@include file="SessionValidator.jsp" %>

     
    </head>
    <%@include file="Head.jsp" %><br><br><br><br><br><br><br><br><br><br><br><br>
    <body>
        <!-- Navigation -->
        
       
        <table border="1" cellpading="10" align="center">

            <tr>
                <td> Date</td>
                <td> User Name</td>
                <td> Content</td>
                <td> Action</td>

            </tr>
           
     <%
            String sel="select * from tbl_complaint p inner join tbl_user d on d.user_id=p.user_id";
           // out.println(sel);
            ResultSet rs=con.selectCommand(sel);
            int i=0;
            while(rs.next())
            {
               i++;
                %>

            <tr>
                <td><%=rs.getString("complaint_date")%></td>
                <td><%=rs.getString("user_name")%></td>
                <td><%=rs.getString("complaint_description")%></td>
                <td><a href="Reply.jsp?aid=<%=rs.getString("complaint_id")%>" >Reply</a></td>
            </tr>         
            <%
                }
            %>
        </table>
    </form><br><br><br><br><br><br><br><br><br><br><br><br>
     <!-- Footer -->
     <%@include file="Foot.jsp" %>
</body>
</html>