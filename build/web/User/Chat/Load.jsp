<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    String selQry = "select * from tbl_chat c inner join tbl_user u on (u.user_id=c.from_user_id) or (u.user_id=c.to_user_id) order by chat_date";
    System.out.println(selQry);
    ResultSet rs = con.selectCommand(selQry);
    while (rs.next()) {

        if (rs.getString("to_user_id").equals(session.getAttribute("userid"))) {
            String sel = "select * from tbl_seller where seller_id='" + request.getParameter("cid") + "'";
            ResultSet z = con.selectCommand(sel);
            if (z.next()) {
%>

<div class="chat-message is-received">
    <img src="../../Assets/userphoto/<%=z.getString("seller_photo")%>" alt="">
    <div class="message-block">
        <span><%=z.getString("seller_name")%></span>
        <div class="message-text"><%=rs.getString("chat_content")%></div>
    </div>
</div>
    <div class="chat-message" style="margin: 0px; padding: 0px" >

</div>
<%

    }
} else if (rs.getString("from_user_id").equals(session.getAttribute("userid"))) {
%>
<div class="chat-message is-sent">
    <img src="../../Assets/userphoto/<%=rs.getString("user_photo")%>" alt="">
    <div class="message-block">
        <span><%=rs.getString("user_name")%></span>
        <div class="message-text"><%=rs.getString("chat_content")%></div>
    </div>
</div>
<div class="chat-message" style="margin: 0px; padding: 0px" >

</div>
<%

} 
    }


%>