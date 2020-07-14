<%-- 
    Document   : indexcl
    Created on : 22/09/2019, 12:10:59 PM
    Author     : Jojansantia
--%>
<%@page import="java.sql.ResultSet"%>
<link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css">
<%@page import="Code.DbConnect" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<h1>Listado clientes</h1>

<div class="table-responsive">
    <table class="table table-striped" id="datatable">
        <thead>
        <tr>
            <th>Idcliente</th>
            <th>NombreCliente</th>
            <th>TipoCliente</th>
            <th>TipoIdentidad</th>
            <th>Telefono</th>
            <th>Correo</th>
        </tr>
        </thead>
        <tbody>
        <%
            DbConnect db = new DbConnect();
            ResultSet Consulta = db.DB().executeQuery("SELECT INT_ID_CLIENTE,NVARCHAR_NOMBRE,NVARCHAR_TIPO,NVARCHAR_TIPOENTIDAD,INT_TELEFONO,NVARCHAR_CORREO FROM CLIENTE");
            while (Consulta.next()) {
                out.println("<tr>");
                out.println("<td>");
                out.println(Consulta.getString("INT_ID_CLIENTE"));
                out.println("</td>");
                out.println("<td>");
                out.println(Consulta.getString("NVARCHAR_NOMBRE"));
                out.println("</td>");
                out.println("<td>");
                out.println(Consulta.getString("NVARCHAR_TIPO"));
                out.println("</td>");
                out.println("<td>");
                out.println(Consulta.getString("NVARCHAR_TIPOENTIDAD"));
                out.println("</td>");
                out.println("<td>");
                out.println(Consulta.getString("INT_TELEFONO"));
                out.println("</td>");
                out.println("<td>");
                out.println(Consulta.getString("NVARCHAR_CORREO"));
                out.println("</td>");
                out.println("</tr>");
            }
        %>
        </tbody>
    </table>
</div>
<br>
<div class="text-center" class="btncitas">
    <button type="volver"  class="btn btn-secondary col-md-2 boton btn-responsive btninter" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/Home.jsp'">Volver</button>
</div>
</br>
<jsp:include page="../Layout/footer.jsp" />