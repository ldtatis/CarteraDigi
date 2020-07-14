<%@page import="java.sql.ResultSet"%>
<%@page import="Code.DbConnect" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../Layout/header.jsp" />

<br>
<h1>Seguimientos Cerrados</h1>

<div class="table-responsive">
    <table class="table table-striped" id="datatable">
        <thead>
            <tr>
                <th scope="col">Fecha Seguimiento</th>
                <th scope="col">Tipo Proceso</th>
                <th scope="col">Causa</th>
                <th scope="col">Resultado</th>
                <th scope="col">Descripcion</th>
            </tr>
        </thead>
        <tbody>
            <%
                DbConnect db = new DbConnect();
                ResultSet Consulta = db.DB().executeQuery("EXEC GestionCarteraDB.dbo.TB_SEGUIMIENTOS_CERRADOS");
                while (Consulta.next()) {
            %>        
            <tr>
                <th><%out.println(Consulta.getString("FECHA_SEGUIMIENTO"));%></th>
                <td><%out.println(Consulta.getString("TIPO_PROCESO"));%></td>
                <th><%out.println(Consulta.getString("CAUSA"));%></th>
                <td><%out.println(Consulta.getString("RESULTADO"));%></td>
                <td><%out.println(Consulta.getString("DESCRIPCION"));%></td>
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



