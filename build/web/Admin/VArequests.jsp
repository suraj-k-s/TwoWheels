<%@page  import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Ver Ana Req</title>
        <%@include file="SessionValidator.jsp" %>


    </head>
    <%@include file="Head.jsp" %><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <body>
        <!-- Navigation -->

        <%                                if (request.getParameter("did") != null) {

                    String upd = "update tbl_analyser set analyser_status=1 where analyser_id='" + request.getParameter("did") + "'";
                    con.executeCommand(upd);
                    response.sendRedirect("VArequests.jsp");
                }
                if (request.getParameter("eid") != null) {

                    String upd1 = "update tbl_analyser set analyser_status=2 where analyser_id='" + request.getParameter("eid") + "'";
                    con.executeCommand(upd1);
                    response.sendRedirect("VArequests.jsp");

                
            }
        %>
        <form method="post">
            <h1>Verify user Requests</h1> 

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
                <%
                    String sel1 = "select * from tbl_analyser where analyser_status='0'";
                    // out.println(sel1);
                    ResultSet rs1 = con.selectCommand(sel1);
                    int i = 0;

                    while (rs1.next () 
                        ) {
                        i++;//selects value from table
%> 
                <tr>
                    <td><%=i%></td>
                    <td><%=rs1.getString("analyser_name")%></td>
                    <td><%=rs1.getString("analyser_contact")%></td>
                    <td><%=rs1.getString("analyser_email")%></td>
                    <td><%=rs1.getString("analyser_address")%></td>
                    <td><img src="../Assets/analysphoto/<%=rs1.getString("analyser_photo")%>" width="120" height="120" ></td>
                    <td><img src="../Assets/analysproof/<%=rs1.getString("analyser_proof")%>" width="120" height="120"></td>
                    <td><a href="VArequests.jsp?did=<%=rs1.getString("analyser_id")%>&mailid=<%=rs1.getString("analyser_email")%>&name=<%=rs1.getString("analyser_name")%>">ACCEPT</a>
                        <a href="VArequests.jsp?eid=<%=rs1.getString("analyser_id")%>&mailid=<%=rs1.getString("analyser_email")%>&name=<%=rs1.getString("analyser_name")%>">REJECT</a></td>

                </tr>



                <%
                    }
                %>
            </table>
            <h1>Accepted user Requests</h1> 
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
                    String sel2 = "select * from tbl_analyser where analyser_status='1'";
                    // out.println(sel1);
                    ResultSet rs2 = con.selectCommand(sel2);
                    int j = 0;

                    while (rs2.next () 
                        ) {
                        j++;
                %>
                <tr>
                    <td><%=j%></td>
                    <td><%=rs2.getString("analyser_name")%></td>
                    <td><%=rs2.getString("analyser_contact")%></td>
                    <td><%=rs2.getString("analyser_email")%></td>
                    <td><%=rs2.getString("analyser_address")%></td>

                    <td><img src="../Assets/analysphoto/<%=rs2.getString("analyser_photo")%>" width="120" height="120" ></td>
                    <td><img src="../Assets/analysproof/<%=rs2.getString("analyser_proof")%>" width="120" height="120"></td>
                    <td>Accepted</td>
                    <td> <a href="VArequests.jsp?eid=<%=rs2.getString("analyser_id")%>&mailid=<%=rs2.getString("analyser_email")%>&name=<%=rs2.getString("analyser_name")%>">REJECT</a></td>

                </tr>

                <%
                    }
                %>
            </table>
        </table>
        <h1>Rejected user Requests</h1> 
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
                String sel3 = "select * from tbl_analyser where analyser_status='2'";
                // out.println(sel1);
                ResultSet rs3 = con.selectCommand(sel3);
                int k = 0;

                while (rs3.next () 
                    ) {
                    k++;
            %>
            <tr>
                <td><%=j%></td>
                <td><%=rs3.getString("analyser_name")%></td>
                <td><%=rs3.getString("analyser_contact")%></td>
                <td><%=rs3.getString("analyser_email")%></td>
                <td><%=rs3.getString("analyser_address")%></td>

                <td><img src="../Assets/analysphoto/<%=rs3.getString("analyser_photo")%>" width="120" height="120" ></td>
                <td><img src="../Assets/analysproof/<%=rs3.getString("analyser_proof")%>" width="120" height="120"></td>
                <td>Rejected</td>
                <td> <a href="VArequests.jsp?did=<%=rs3.getString("analyser_id")%>&mailid=<%=rs3.getString("analyser_email")%>&name=<%=rs3.getString("analyser_name")%>">ACCEPT</a></td>

            </tr>

            <%
                }
            %>
        </table>
    </form><br><br><br><br><br><br><br><br><br><br><br><br>
    <%@include file="Foot.jsp" %>
</body>
</html>

