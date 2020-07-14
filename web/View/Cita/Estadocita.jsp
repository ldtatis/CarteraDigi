<%-- 
    Document   : Estadocita
    Created on : 5/10/2019, 11:36:14 AM
    Author     : Jojansantia
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Code.DbConnect" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../Layout/header.jsp" />
<h1>Cambiar estado cita</h1>

<%DbConnect db = new DbConnect();

    String estado = request.getParameter("estado");
    //ResultSet Consulta = db.DB().executeQuery("SELECT INT_ID_CITAS,INT_ID_CLIENTE,INT_ID_USUARIO,DATETIME_FECHA,NVARCHAR_DESCRIPCION,NVARCHAR_OBJETIVO,NVARCHAR_RESULTADO,INT_TELEFONO,NVARCHAR_CORREO FROM CITAS ");
    ResultSet Consulta = db.DB().executeQuery("SELECT INT_ID_CITAS,INT_ID_CLIENTE,INT_ID_USUARIO,DATETIME_FECHA,NVARCHAR_DESCRIPCION,NVARCHAR_OBJETIVO,NVARCHAR_RESULTADO,INT_TELEFONO,NVARCHAR_CORREO FROM CITAS WHERE INT_ID_CITAS = " + estado + "");
    while (Consulta.next()) {%>
<label >Id de la Cita: </label>
<%out.println(Consulta.getString("INT_ID_CITAS"));%>
</br>

<label >Id del Cliente: </label>
<%out.println(Consulta.getString("INT_ID_CLIENTE"));%>
</br>
<label >Id del Usuario: </label>
<%out.println(Consulta.getString("INT_ID_USUARIO"));%>

</br>
<label >Fecha: </label>
<%out.println(Consulta.getString("DATETIME_FECHA"));%>

</br>
<label >Descripcion: </label>
<%out.println(Consulta.getString("NVARCHAR_DESCRIPCION"));%>
</br>
<label >Objetivo: </label>
<%out.println(Consulta.getString("NVARCHAR_OBJETIVO"));%>
</br>
<label >Telefono: </label>
<%out.println(Consulta.getString("INT_TELEFONO"));%>
</br>
<label >Correo: </label>
<%out.println(Consulta.getString("NVARCHAR_CORREO"));%>
</br>
</br>
<%
    }
%>

<form action="http://localhost:8080/ProyectoConstruccion/CitaServlet?opc=2" method="POST"> 
    <div class="row">
        <div class="form-group col-md-4 ">
            <label >Id Cita: </label>
            <input type="text" class="form-control" placeholder="<%out.println(request.getParameter("estado"));%>" value="<%out.println(request.getParameter("estado"));%>" name="IdCita" id="IdCita" required readonly>        
        </div>
        <div class="form-group col-md-8">
            <label >Estado Cita</label>
            <select class="form-control" id="estadocita" name="estadocita">
                <option>En espera</option>
                <option>En proceso</option>
                <option>Cancelada</option>
                <option>Finalizada</option>
            </select>
        </div>
    </div>
        
        <div class="form-group ">
        <label for="causa">Descripcion: </label>
        <textarea type="text" class="form-control" id="descripcion" rows="5" aria-describedby="descripcion" placeholder="Nueva descripcion de la cita" name="descripcion"> </textarea>       
    </div>
        
    <div class="text-center" class="btncitas">
        <button type="su" class="btn btn-primary col-md-2 boton" >Guardar</button>
        <button type="button" class="btn btn-secondary col-md-2 boton" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/Cita/indexc.jsp'">Volver</button>
        
    </div></br>
</form>

</br>
<jsp:include page="../Layout/footer.jsp" />
