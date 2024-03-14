<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="SessionValidator.jsp" %>
        <title>Gallery</title>
        <style>
            
            
/* placing evrything in the section in the center */
.gallery-container {
  display: flex;
  justify-content: center;
}
/*making the gallery flex and also adding wrap to make it a litle bit responsive */
.gallary {
  width: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  gap: 20px;
}
/* styling the images */
.gallary > img {
  width: 150px;
  height: 150px;
  object-fit: cover;
  border-radius: 10px;
}

        </style>
    </head>
    <%@include file="Head.jsp" %>
    <body>
             <div>
            
            
        </div>
        <h1 align="center"><span style="color: blue;">Pro</span>duct Gallery</h1>
          <section class="gallery-container">
        <div class="gallary">
            <%
            String sel="select * from tbl_vg where usedvehicle_id='"+request.getParameter("vgid")+"'";
           ResultSet rs=con.selectCommand(sel);
            while(rs.next()){
                %>
                
                <img src="../Assets/usedveh/<%=rs.getString("vg_image")%>">
               
                <%
                
            }
            %>
             </div>
      
          </section>
    
    </body>
    <%@include file="Foot.jsp" %>
</html>
