
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <!-- Website Title -->
        <title>View Feedbacks</title>
        <%@include file="SessionValidator.jsp" %>

        <!-- Styles -->
      
    </head>
    <body>
        <%@include file="Head.jsp" %><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <!-- Navigation -->
      
        <table border="1" cellpading="10" align="center">

            <tr>
                <td>Si No</td>
                <td> Date</td>
                <td> User Name</td>
                <td> Content</td>
            </tr>
           
     <%
            String sel="select * from tbl_feedback p inner join tbl_user d on d.user_id=p.user_id";
           // out.println(sel);
            ResultSet rs=con.selectCommand(sel);
            int i=0;
            while(rs.next())
            {
               i++;
                %>

            <tr>
                <td><%=i%></td>
                <td><%=rs.getString("feedback_date")%></td>
                <td><%=rs.getString("user_name")%></td>
                <td><%=rs.getString("feedback_description")%></td>
            </tr>         
            <%
                }
            %>
        </table>
    </form><br><br><br><br><br><br><br><br><br><br><br><br>
    <%@include file="Foot.jsp" %>
</body>
</html>