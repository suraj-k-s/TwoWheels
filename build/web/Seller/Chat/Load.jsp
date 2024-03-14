<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    String selQry = "select * from tbl_chat c inner join tbl_seller u on (u.seller_id=c.from_seller_id) or (u.seller_id=c.to_seller_id) order by chat_date";
    System.out.println(selQry);
    ResultSet rs = con.selectCommand(selQry);
    while (rs.next()) {

        if (rs.getString("to_seller_id").equals(session.getAttribute("sellerid"))) {
            String sel = "select * from tbl_user where user_id='" + request.getParameter("cid") + "'";
            ResultSet z = con.selectCommand(sel);
            if (z.next()) {
%>

<div class="chat-message is-received">
    <img src="../../Assets/userphoto/<%=z.getString("user_photo")%>" alt="">
    <div class="message-block">
        <span><%=z.getString("user_name")%></span>
        <div class="message-text"><%=rs.getString("chat_content")%></div>
    </div>
</div>
    <div class="chat-message" style="margin: 0px; padding: 0px" >

</div>
<%

    }
} else if (rs.getString("from_seller_id").equals(session.getAttribute("sellerid"))) {
%>
<div class="chat-message is-sent">
    <img src="../../Assets/userphoto/<%=rs.getString("seller_photo")%>" alt="">
    <div class="message-block">
        <span><%=rs.getString("seller_name")%></span>
        <div class="message-text"><%=rs.getString("chat_content")%></div>
    </div>
</div>
<div class="chat-message" style="margin: 0px; padding: 0px" >

</div>
<%

} 
    }


%>