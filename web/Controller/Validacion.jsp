<%@page import="java.sql.*" %>
<%@page import="Code.DbConnect" %>
<%
    DbConnect db = new DbConnect();
    String action = request.getParameter("action");
    if (action.equals("Sign In")) {
            String Usuario = request.getParameter("usuario");
            String Contrasena = request.getParameter("contrasena");
        try {        
            if (db.DB().executeQuery("SELECT * FROM USUARIO WHERE NVARCHAR_LOGIN='"+Usuario+"' and NVARCHAR_CONTRASENA = '"+Contrasena+"'").next()) {
                    response.sendRedirect("../View/Home.jsp");
                }else{ 
                out.println("<script type=\"text/javascript\"=>");
                out.println("alert('incorrect');");
                out.println("location = 'index.jsp';");
                out.println("</script>");
            }
        } catch (Exception e) {
            out.println(e);
        }
    }
%>