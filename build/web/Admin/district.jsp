
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <title>District</title>
        <%@include file="SessionValidator.jsp" %>

    </head>
    <body>
      
        <%
           String ename="",eid="";
            
            if(request.getParameter("btnsave")!=null)
            {
              if(!request.getParameter("txthidden").equals(""))
              {
                  String up="update tbl_district set district_name='"+request.getParameter("txtname")+"' where district_id='"+request.getParameter("eid")+"'";
                  con.executeCommand(up);
                  response.sendRedirect("District.jsp");
              }
              else
              {
                  
                      String sel="select * from tbl_district where district_name='"+request.getParameter("txtname")+"'";
                      ResultSet rs=con.selectCommand(sel);
                      if(rs.next())
                      {
                           %>
                      <script>
                          alert('Name already exist');
                      </script>
                      
                      <%
                      }
                      
                      else
                  {
                  String ins="insert into tbl_district(district_name)values('"+request.getParameter("txtname")+"')";
                  con.executeCommand(ins);
              }
                
            }
            }
            
          
            if(request.getParameter("did")!=null)
            {
                String del="delete from tbl_district where district_id='"+request.getParameter("did")+"'";
                con.executeCommand(del);
                response.sendRedirect("District.jsp");
            }
            if(request.getParameter("eid")!=null)
            {
                String sel1="select * from tbl_district where district_id='"+request.getParameter("eid")+"'";
                ResultSet rs1=con.selectCommand(sel1);
                if(rs1.next())
                {
                    eid=rs1.getString("district_id");
                    ename=rs1.getString("district_name");
                }
            }
        %>
        <%@include file="Head.jsp" %><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <form method="post">
            <table border="1" cellpadding="10" style="border-collapse: collapse" align="center">
                <input type="hidden" name="txthidden" value="<%=eid%>">
                <tr>
                    <td>District</td>
                    <td><input type="text" name="txtname" required="required" autocomplete="off" value="<%=ename%>"></td>
                </tr>
                  <tr>
                    
                      <td colspan="2" align="center"><input type="submit" name="btnsave" value="Save"></td>
                </tr>
            </table>
                <br>
            <table border="1" cellpadding="10" align="center">
                <tr>
                    <td>Sl.no</td>
                    <td>Name</td>
                    <td>Action</td>
                </tr>
                <%
            String sel="select * from tbl_district";
            ResultSet rs=con.selectCommand(sel);
            int i=0;
            while(rs.next())
            {
               i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("district_name")%></td>
                    <td><a href="District.jsp?did=<%=rs.getString("district_id")%>">Delete</a>/
                        <a href="District.jsp?eid=<%=rs.getString("district_id")%>">Edit</a></td>
                </tr>
                
                <%
            }
                %>
            </table>
        </form>
            <!-- Footer --><br><br><br><br><br><br><br><br><br><br><br><br>
            <%@include file="Foot.jsp" %>
    </body>
</html>
