<%
        response.setHeader("Cache-Control", "no-cache, no-store");
        if(session.getAttribute("analyserid") == null)
        {
            response.sendRedirect("../");
        }
    %>