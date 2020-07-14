<%@page import="java.sql.ResultSet"%>
<%@page import="Code.DbConnect" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../Layout/header.jsp" />

<br>
<h1>Listado de abogados</h1>

<div class="table-responsive">
    <table class="table table-striped" id="datatable">
        <thead>
            <tr>
                <th scope="col">Nombre del Abogado</th>
                <th scope="col">Contacto</th>
                <th scope="col">Telefono</th>
                <th scope="col">Correo Electronico</th>
                <th scope="col">Direccion</th>
            </tr>
        </thead>
        <tbody>
            <%
                DbConnect db = new DbConnect();
                ResultSet Consulta = db.DB().executeQuery("EXEC GestionCarteraDB.dbo.TB_ABOGADOS");
                while (Consulta.next()) {
            %>        
            <tr>
                <th><%out.println(Consulta.getString("NOMBRE_ABOGADO"));%></th>
                <td><%out.println(Consulta.getString("CONTACTO"));%></td>
                <td><%out.println(Consulta.getString("TELEFONO"));%></td>
                <td><%out.println(Consulta.getString("CORREO_ELECTRONICO"));%></td>
                <td><%out.println(Consulta.getString("DIRECCION"));%></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>      
</br>
<div class="text-center" class="btncitas">
    <button type="volver"  class="btn btn-secondary col-md-2 boton btn-responsive btninter" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/Reporte/indexr.jsp'">Volver</button>
</div>
</br>
<jsp:include page="../Layout/footer.jsp" />

<%

    String msg = "";
    try{
        msg = (String)session.getAttribute("respuesta");
    }catch(Exception e){
       
    }
    if(msg == "correcto1"){
        
     %>
     <script type="text/javascript">InsertarCorrectamenteC();</script>
<%   
    }else if(msg == "correcto2"){
     %>
     <script type="text/javascript">ActualizarCorrectamenteC();</script>
<%  
}
    session.setAttribute("respuesta","incorrecto");

%>



