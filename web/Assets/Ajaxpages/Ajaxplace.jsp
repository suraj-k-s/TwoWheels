
<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<option>--select--</option>
<%
    String sel="select * from tbl_place where district_id='"+request.getParameter("id")+"'";
    ResultSet rs=con.selectCommand(sel);
    while(rs.next())
    {
        %>
        <option value="<%=rs.getString("place_id")%>"><%=rs.getString("place_name")%></option>
        <%
    }
%>