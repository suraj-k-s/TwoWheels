<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%

    String insQry="insert into tbl_chat(from_seller_id,to_user_id,chat_content,chat_date) values('"+session.getAttribute("sellerid") +"','"+request.getParameter("cid") +"','"+request.getParameter("chat") +"',DATE_FORMAT(sysdate(), '%M %d %Y, %h:%i %p'))";
    if(con.executeCommand(insQry))
    {
        out.println("sended");
    }
    else
    {
        out.println("failed");
        System.out.println(insQry);
    }
    
%>