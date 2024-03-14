<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<table>
        <tr>
<%
             String dsid = request.getParameter("dsid");
             String plid = request.getParameter("plid");
             String diid = request.getParameter("diid");
             String tyid = request.getParameter("tyid");
             String brid = request.getParameter("brid");
             
             String sel = "select * from tbl_usedvehicle u inner join tbl_displacement d on d.displacement_id=u.displacement_id inner join tbl_type t on t.type_id=u.type_id inner join tbl_brand b on b.brand_id=u.brand_id inner join tbl_seller s on s.seller_id=u.seller_id inner join tbl_place plc on plc.place_id=s.place_id inner join tbl_district dst on dst.district_id=plc.district_id where true";
                System.out.println(sel);
             if(!dsid.equals("")) {
                 sel += " and plc.district_id='" + dsid + "'";
                
             }
             
             if(!plid.equals("")){
                 sel +=" and s.place_id='" + plid + "'";
             }
                 
              if(!diid.equals("")){
                 sel +=" and u.displacement_id='" + diid + "'";
             } 
              
              if(!tyid.equals("")){
                 sel +=" and u.type_id='" + tyid + "'";
             } 
              
              if(!brid.equals("")){
                 sel +=" and u.brand_id='" + brid + "'";
             }
               
             
                 
                 
                 ResultSet rs=con.selectCommand(sel);
                 int i=0;
                 while(rs.next()){
                     i++;
                     %>
                         <td>
                <p style="border: 1px solid black;margin: 2px;padding: 10px"> 
                    <img src="../Assets/usedveh/<%=rs.getString("vehicle_photo")%>"width="120" height="120" ><br>
                    <a href="../Assets/usedveh/<%=rs.getString("vehicle_rc")%>" download>Download RC</a><br> 
                    <%=rs.getString("vehicle_name")%><br>
                    <%=rs.getString("vehicle_price")%><br>
                    <%=rs.getString("vehicle_year")%><br>
                    <%=rs.getString("vehicle_audometer")%>
                </p>
            </td>


            <%
                    if (i == 3) {
                        out.println("</tr><tr>");
                        i = 0;// 4 nos at max at the row
                    }
                }
            %>
    </table>
                     
  