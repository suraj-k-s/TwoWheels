<%-- 
    Document   : Chat
    Created on : May 8, 2021, 4:07:26 PM
    Author     : Pro-TECH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <html lang="en">

        <head>
            <!-- Required meta tags -->
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
            <meta http-equiv="x-ua-compatible" content="ie=edge">

            <title>Chat</title>
            <link rel="icon" type="image/png" href="../../Assets/Template/assets/img/favicon.png" />
            <!-- Fonts -->
            <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
            <!-- Core CSS -->
            <link rel="stylesheet" href="../../Assets/Template/assets/css/app.css">
            <link rel="stylesheet" href="../../Assets/Template/assets/css/core.css">

        </head>
        <%
        String sel = "select * from tbl_user where user_id='"+request.getParameter("cid")+"'";
        ResultSet rs = con.selectCommand(sel);
        rs.next();
        
        %>
  
    <body>

        <!-- Pageloader -->
        <div class="pageloader"></div>
        <div class="infraloader is-active"></div>

        <div class="chat-wrapper is-standalone">
            <div class="chat-inner">

                <!-- Chat top navigation -->
                <div class="chat-nav">
                    <div class="nav-start">
                        <div class="recipient-block">
                            <div class="avatar-container">
                                <img class="user-avatar" src="../../Assets/userphoto/<%=rs.getString("user_photo")%>" alt="">
                            </div>
                            <div class="username">
                                <span><%=rs.getString("user_name")%></span>
                            </div>
                        </div>
                    </div>
                    <div class="nav-end">

                        <a href="../HomePage.jsp" class="chat-nav-item is-icon is-hidden-mobile">
                        <i data-feather="home"></i>
                    </a>

                    </div>
                </div>


                <!-- Chat body -->
                <div id="chat-body" class="chat-body">
                    <!-- Conversation -->
                    <div id="conversation" class="chat-body-inner has-slimscroll">

                    </div>
                    <!-- Compose message area -->
                    <div class="chat-action">
                        <div class="chat-action-inner">
                            <div class="control" style="text-align: center">
                                <input type="hidden" id="cid" value="<%=request.getParameter("cid")%>"/>
                                <textarea class="textarea comment-textarea" id="msg" rows="2"></textarea>
                                <input type="button" value="Send" name="btn_send"  id="btn_send" onclick="sendChat()"
                                       style="border: none;background-color: #5082c3;border-radius: 15px 10px; color: white;
                                       margin: 10px; margin-bottom: 30px ; width: 30%; height: 25px">

                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
                                <script src="../../Assets/JQ/jQuery.js"></script>

        <script>

                                    function sendChat()
                                    {
                                        
                                        var chat = document.getElementById("msg").value;
                                        var cid = document.getElementById("cid").value;
                                        if (chat.length <= 35)
                                        {
                                            $.ajax({url: "AjaxChat.jsp?chat="+chat+"&cid="+cid,
                                                success: function(result){


                                                    document.getElementById("msg").value = "";

                                                    $('#conversation').animate({scrollTop: $('#conversation')[0].scrollHeight});


                                                }});
                                        }
                                        else
                                        {
                                            alert("Character Length less Than 35 Allowed");
                                            document.getElementById("msg").value = "";

                                            $('#conversation').animate({scrollTop: $('#conversation')[0].scrollHeight});
                                        }

                                    }
                                    $(document).ready(function() {
                                        setInterval(function() {
                                            var cid = document.getElementById("cid").value;
                                            $("#conversation").load('Load.jsp?cid='+cid)
                                        }, 50);
                                    });

        </script>
        <!-- Concatenated js plugins and jQuery -->
        <script src="../../Assets/Template/assets/js/app.js"></script>
        <script src="https://js.stripe.com/v3/"></script>
        <script src="../../Assets/Template/assets/data/tipuedrop_content.js"></script>

        <!-- Core js -->
        <script src="../../Assets/Template/assets/js/global.js"></script>

        <!-- Navigation options js -->
        <script src="../../Assets/Template/assets/js/navbar-v1.js"></script>
        <script src="../../Assets/Template/assets/js/navbar-v2.js"></script>
        <script src="../../Assets/Template/assets/js/navbar-mobile.js"></script>
        <script src="../../Assets/Template/assets/js/navbar-options.js"></script>
        <script src="../../Assets/Template/assets/js/sidebar-v1.js"></script>

        <!-- Core instance js -->
        <script src="../../Assets/Template/assets/js/main.js"></script>
        <!--        <script src="../../Assets/friendskit/assets/js/chat.js"></script>-->
        <script src="../../Assets/Template/assets/js/touch.js"></script>
        <script src="../../Assets/Template/assets/js/tour.js"></script>

        <!-- Components js -->
        <script src="../../Assets/Template/assets/js/explorer.js"></script>
        <script src="../../Assets/Template/assets/js/widgets.js"></script>
        <script src="../../Assets/Template/assets/js/modal-uploader.js"></script>
        <script src="../../Assets/Template/assets/js/popovers-users.js"></script>
        <script src="../../Assets/Template/assets/js/popovers-pages.js"></script>
        <script src="../../Assets/Template/assets/js/lightbox.js"></script>




    </body>

</html>