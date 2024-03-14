
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <
        <title>Place</title>
        <%@include file="SessionValidator.jsp" %>

    <body>
        <%@include file="Head.jsp" %><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br
         <!-- Navigation -->
       
                    <%
           String ename="",eid="",pname="";
            
            if(request.getParameter("btnsave")!=null)
            {
              if(!request.getParameter("txthidden").equals(""))
              {
                  String up="update tbl_place set district_id='"+request.getParameter("seldistrict")+"',place_name='"+request.getParameter("txtplace")+"' where place_id='"+request.getParameter("eid")+"'";
                  con.executeCommand(up);
                  response.sendRedirect("place.jsp");
              }
              else
              {
                  
                      String sel="select * from tbl_place where place_name='"+request.getParameter("txtplace")+"'";
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
                  String ins="insert into tbl_place(district_id,place_name)values('"+request.getParameter("seldistrict")+"','"+request.getParameter("txtplace")+"')";
                  con.executeCommand(ins);
              }
                
            }
            }
            
          
            if(request.getParameter("did")!=null)
            {
                String del="delete from tbl_place where place_id='"+request.getParameter("did")+"'";
                con.executeCommand(del);
                response.sendRedirect("place.jsp");
            }
            if(request.getParameter("eid")!=null)
            {
                String sel1="select * from tbl_place where place_id='"+request.getParameter("eid")+"'";
                ResultSet rs1=con.selectCommand(sel1);
                if(rs1.next())
                {
                    eid=rs1.getString("place_id");
                    ename=rs1.getString("district_id");
                    pname=rs1.getString("place_name");
                }
            }
        %>
        <form method="post">
            <table border="1" cellpadding="10" style="border-collapse: collapse" align="center">
                                <input type="hidden" name="txthidden" value="<%=eid%>">

                <tr>
                    <td>District</td>
                    <td>
                 <select name="seldistrict" required="required">
                        <option>--select--</option>
                          <%
            String sel="select * from tbl_district";
            ResultSet rs=con.selectCommand(sel);
            while(rs.next())
            {
                %>
                <option value="<%=rs.getString("district_id")%>" <%if(ename.equals(rs.getString("district_id"))){out.println("selected");}%>><%=rs.getString("district_name")%></option>
                <%
            }
                        %>
                     
                 </select>
                        </td>
                </tr>
               
                <tr>
                    <td>Place</td>
                    <td>
                        <input type="text" name="txtplace" required="required" autocomplete="off" value="<%=pname%>">
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <input type="submit" name="btnsave" value="save">
                    </td>
                </tr>
            </table>
                   <br>
            <table border="1" cellpadding="10" align="center">
                <tr>
                    <td>Sl.no</td>
                    <td>District</td>
                     <td>Place</td>
                    <td>Action</td>
                    
                </tr>
                <%
            String sel1="select * from tbl_place p inner join tbl_district d on d.district_id=p.district_id";
           // out.println(sel1);
            ResultSet rs1=con.selectCommand(sel1);
            int i=0;
            while(rs1.next())
            {
               i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs1.getString("district_name")%></td>
                    <td><%=rs1.getString("place_name")%></td>
                    <td><a href="place.jsp?did=<%=rs1.getString("place_id")%>">Delete</a>/
                        <a href="place.jsp?eid=<%=rs1.getString("place_id")%>">Edit</a></td>
                </tr>
                
                <%
            }
                %>
            </table>
        </form><br><br><br><br><br><br><br><br><br><br><br><br>
                <%@include file="Foot.jsp" %>
    </body>
</html>
