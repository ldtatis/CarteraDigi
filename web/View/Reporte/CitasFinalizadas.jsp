<%@page import="java.sql.ResultSet"%>
<%@page import="Code.DbConnect" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../Layout/header.jsp" />

<br>
<h1>Citas Finalizadas</h1>

<div class="table-responsive">
    <table class="table table-striped" id="datatable">
        <thead>
            <tr>
                <th scope="col">Fecha Cita</th>
                <th scope="col">Nombre Cliente</th>
                <th scope="col">Correo del cliente</th>
                <th scope="col">Tipo de cliente</th>
                <th scope="col">Descripcion</th>
                <th scope="col">Objetivo Cita</th>
            </tr>
        </thead>
        <tbody>
            <%
                DbConnect db = new DbConnect();
                ResultSet Consulta = db.DB().executeQuery("EXEC GestionCarteraDB.dbo.TB_CITAS_FINALIZADA");
                while (Consulta.next()) {
            %>        
            <tr>
                <th><%out.println(Consulta.getString("FECHA_CITA"));%></th>
                <td><%out.println(Consulta.getString("NOMBRE_DEL_CLIENTE"));%></td>
                <th><%out.println(Consulta.getString("CORREO_DEL_CLIENTE"));%></th>
                <td><%out.println(Consulta.getString("TIPO_DEL_CLIENTE"));%></td>
                <td><%out.println(Consulta.getString("DESCRIPCION"));%></td>
                <td><%out.println(Consulta.getString("OBJETIVO_DE_LA_CITA"));%></td>
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



