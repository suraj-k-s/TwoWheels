<%
        response.setHeader("Cache-Control", "no-cache, no-store");
        if(session.getAttribute("sellerid") == null)
        {
            response.sendRedirect("../");
        }
    %>