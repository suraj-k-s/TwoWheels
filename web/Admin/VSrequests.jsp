<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Ver Sel Req</title>
        <%@include file="SessionValidator.jsp" %>

    </head>
    <%@include file="Head.jsp" %><br><br><br><br><br><br><br><br><br><br><br><br>
    <body>
        <!-- Navigation -->

        <%                                if (request.getParameter("did") != null) {

                String upd = "update tbl_seller set seller_status=1 where seller_id='" + request.getParameter("did") + "'";
                con.executeCommand(upd);
                response.sendRedirect("VSrequests.jsp");
            }

            if (request.getParameter("eid") != null) {
                String upd1 = "update tbl_seller set seller_status=2 where seller_id='" + request.getParameter("eid") + "'";
                con.executeCommand(upd1);
                response.sendRedirect("VSrequests.jsp");
            }

        %>
        <form method="post">
            <h1>Verify Seller Requests</h1> 

            <table border="1" cellpadding="10" align="center">
                <tr>
                    <td>Sl.no</td>
                    <td>Seller Name</td>
                    <td>Contact</td>
                    <td>G mail</td>
                    <td>Address</td>
                    <td>Photo</td>
                    <td>Proof</td>
                    <td>Option</td>
                </tr>
                <%                                        String sel1 = "select * from tbl_seller where seller_status='0'";
                    // out.println(sel1);
                    ResultSet rs1 = con.selectCommand(sel1);
                    int i = 0;
                    while (rs1.next()) {
                        i++;//selects value from table
                %> 
                <tr>
                    <td><%=i%></td>
                    <td><%=rs1.getString("seller_name")%></td>
                    <td><%=rs1.getString("seller_contact")%></td>
                    <td><%=rs1.getString("seller_email")%></td>
                    <td><%=rs1.getString("seller_address")%></td>
                    <td><img src="../Assets/userphoto/<%=rs1.getString("seller_photo")%>" width="120" height="120" ></td>
                    <td><img src="../Assets/userproof/<%=rs1.getString("seller_proof")%>" width="120" height="120"></td>
                    <td><a href="VSrequests.jsp?did=<%=rs1.getString("seller_id")%>&mailid=<%=rs1.getString("seller_email")%>&name=<%=rs1.getString("seller_name")%>">ACCEPT</a>
                        <a href="VSrequests.jsp?eid=<%=rs1.getString("seller_id")%>&mailid=<%=rs1.getString("seller_email")%>&name=<%=rs1.getString("seller_name")%>">REJECT</a></td>

                </tr>



                <%
                    }
                %>
            </table>
            <h1>Accepted Seller Requests</h1> 
            <table border="1" cellpadding="10" align="center">
                <tr>
                    <td>Sl.no</td>
                    <td>Seller Name</td>
                    <td>Contact</td>
                    <td>G mail</td>
                    <td>Address</td>
                    <td>Photo</td>
                    <td>Proof</td>
                    <td>status</td>
                    <td>Option</td>
                </tr>
                <%
                    String sel2 = "select * from tbl_seller where seller_status='1'";
                    // out.println(sel1);
                    ResultSet rs2 = con.selectCommand(sel2);
                    int j = 0;
                    while (rs2.next()) {
                        j++;
                %>
                <tr>
                    <td><%=j%></td>
                    <td><%=rs2.getString("seller_name")%></td>
                    <td><%=rs2.getString("seller_contact")%></td>
                    <td><%=rs2.getString("seller_email")%></td>
                    <td><%=rs2.getString("seller_address")%></td>

                    <td><img src="../Assets/userphoto/<%=rs2.getString("seller_photo")%>" width="120" height="120" ></td>
                    <td><img src="../Assets/userproof/<%=rs2.getString("seller_proof")%>" width="120" height="120"></td>
                    <td>Accepted</td>
                    <td> <a href="VSrequests.jsp?eid=<%=rs2.getString("seller_id")%>&mailid=<%=rs2.getString("seller_email")%>&name=<%=rs2.getString("seller_name")%>">REJECT</a></td>



                </tr>

                <%
                    }
                %>
            </table>
        </table>
        <h1>rejected Seller Requests</h1> 
        <table border="1" cellpadding="10" align="center">
            <tr>
                <td>Sl.no</td>
                <td>Seller Name</td>
                <td>Contact</td>
                <td>G mail</td>
                <td>Address</td>
                <td>Photo</td>
                <td>Proof</td>
                <td>status</td>
                <td>Option</td>
            </tr>
            <%
                String sel3 = "select * from tbl_seller where seller_status='2'";
                // out.println(sel1);
                ResultSet rs3 = con.selectCommand(sel3);
                int k = 0;
                while (rs3.next()) {
                    k++;
            %>
            <tr>
                <td><%=j%></td>
                <td><%=rs3.getString("seller_name")%></td>
                <td><%=rs3.getString("seller_contact")%></td>
                <td><%=rs3.getString("seller_email")%></td>
                <td><%=rs3.getString("seller_address")%></td>

                <td><img src="../Assets/userphoto/<%=rs3.getString("seller_photo")%>" width="120" height="120" ></td>
                <td><img src="../Assets/userproof/<%=rs3.getString("seller_proof")%>" width="120" height="120"></td>
                <td>Rejected</td>
                <td> <a href="VSrequests.jsp?did=<%=rs3.getString("seller_id")%>&mailid=<%=rs3.getString("seller_email")%>&name=<%=rs3.getString("seller_name")%>">ACCEPT</a></td>



            </tr>

            <%
                }
            %>
        </table>
    </form><br><br><br><br><br><br><br><br><br><br><br><br>
    <%@include file="Foot.jsp" %>
</body>
</html>
