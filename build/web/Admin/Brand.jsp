
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="Head.jsp" %>
    </head><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <body>

        <%
           String ename="",eid="";
            
            if(request.getParameter("btnsave")!=null)
            {
              if(!request.getParameter("txthidden").equals(""))
              {
                  String up="update tbl_brand set brand_name='"+request.getParameter("txtname")+"' where brand_id='"+request.getParameter("eid")+"'";
                  con.executeCommand(up);
                  response.sendRedirect("Brand.jsp");
              }
              else
              {
                  
                      String sel="select * from tbl_brand where brand_name='"+request.getParameter("txtname")+"'";
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
                  String ins="insert into tbl_brand(brand_name)values('"+request.getParameter("txtname")+"')";
                  con.executeCommand(ins);
              }
                
            }
            }
            
          
            if(request.getParameter("did")!=null)
            {
                String del="delete from tbl_brand where brand_id='"+request.getParameter("did")+"'";
                con.executeCommand(del);
                response.sendRedirect("Brand.jsp");
            }
            if(request.getParameter("eid")!=null)
            {
                String sel1="select * from tbl_brand where brand_id='"+request.getParameter("eid")+"'";
                ResultSet rs1=con.selectCommand(sel1);
                if(rs1.next())
                {
                    eid=rs1.getString("brand_id");
                    ename=rs1.getString("brand_name");
                }
            }
        %>
        <form method="post">
            <table border="1" cellpadding="10" style="border-collapse: collapse" align="center">
                <input type="hidden" name="txthidden" value="<%=eid%>">
                <tr>
                    <td>Brand</td>
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
            String sel="select * from tbl_brand";
            ResultSet rs=con.selectCommand(sel);
            int i=0;
            while(rs.next())
            {
               i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("brand_name")%></td>
                    <td><a href="Brand.jsp?did=<%=rs.getString("brand_id")%>">Delete</a>/
                        <a href="Brand.jsp?eid=<%=rs.getString("brand_id")%>">Edit</a></td>
                </tr>
                
                <%
            }
                %>
            </table>
        </form>
            <!-- Footer -->
            <br><br><br><br><br><br><br><br><br><br>
        <%@include file="Foot.jsp" %>
    </body>
</html>
