<%-- 
    Document   : indexf
    Created on : 22/09/2019, 04:09:49 PM
    Author     : Jojansantia
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Code.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<h1>Listado Facturas</h1>
<div class="table-responsive">
    <table class="table table-striped" id="datatable">
        <thead>
            <tr>
                <th>IdFactura</th>
                <th>Descripcion</th>
                <th>FechaGeneracion</th>
                <th>TipoCartera</th>
                <th>NombreDocumento</th>
            </tr>
            </thead>
        <tbody>
            <%
                DbConnect db = new DbConnect();
                ResultSet Consulta = db.DB().executeQuery("SELECT INT_ID_FACTURA,NVARCHAR_DESCRIPCION,DATETIME_FECHA_GENERACION,NVARCHAR_TIPO_CARTERA,NVARCHAR_NOMBRE_DOCUMENTO FROM FACTURA");
                while (Consulta.next()) {
                    out.println("<tr>");
                    out.println("<td>");
                    out.println(Consulta.getString("INT_ID_FACTURA"));
                    out.println("</td>");
                    out.println("<td>");
                    out.println(Consulta.getString("NVARCHAR_DESCRIPCION"));
                    out.println("</td>");
                    out.println("<td>");
                    out.println(Consulta.getString("DATETIME_FECHA_GENERACION"));
                    out.println("</td>");
                    out.println("<td>");
                    out.println(Consulta.getString("NVARCHAR_TIPO_CARTERA"));
                    out.println("</td>");
                    out.println("<td>");
                    out.println(Consulta.getString("NVARCHAR_NOMBRE_DOCUMENTO"));
                    out.println("</td>");
                    out.println("</tr>");
                }
            %>
    </tbody>
    </table>
</div>
<br>
<div class="row">
    <div class="col-md">
        <jsp:include page="../Charts/Chart1.jsp" />
    </div>
</div>
<div class="text-center" class="btncitas">
    <button type="volver"  class="btn btn-secondary col-md-2 boton btn-responsive btninter" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/Home.jsp'">Volver</button>
</div>
</br>
<jsp:include page="../Layout/footer.jsp" />