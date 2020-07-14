<%-- 
    Document   : Crearcita
    Created on : 5/10/2019, 10:25:51 AM
    Author     : Jojansantia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Code.DbConnect" %>
<%@page import="java.sql.ResultSet"%>
<jsp:include page="../Layout/header.jsp" />

<script src="http://localhost:8080/ProyectoConstruccion/js/citas.js"></script> 
<h1>Crear cita</h1>





<form action="http://localhost:8080/ProyectoConstruccion/CitaServlet?opc=1" method="POST" onsubmit="return validar();">
    <div class="row" >

        <div class="form-group col-md-2">
            <label >Id Usuario:</label>


            <select class="form-control" id="IdUsuario" name="IdUsuario"  required>
                <%
                    DbConnect db = new DbConnect();
                    ResultSet Consulta = db.DB().executeQuery("SELECT INT_ID_USUARIO FROM USUARIO");
                    while (Consulta.next()) {
                %> 
                <option><%out.println(Consulta.getString("INT_ID_USUARIO"));%></option>
                <%
                    }
                %>
            </select>
        </div>

        <div class="form-group col-md-2">
            <label >Id Cliente:</label>



            <select class="form-control" id="IdCliente" name="IdCliente"  required>
                <%
                    ResultSet Consulta1 = db.DB().executeQuery("SELECT INT_ID_CLIENTE FROM CLIENTE");
                    while (Consulta1.next()) {
                %> 
                <option><%out.println(Consulta1.getString("INT_ID_CLIENTE"));%></option>
                <%
                    }
                %>
            </select>
        </div>

        <div class="form-group col-md-8">
            <label >Fecha: </label>
            <input type="date"  class="form-control" id="fecha" name="fecha" required>
        </div>
    </div>

    <div class="form-group">
        <label >Descripcion: </label>
        <textarea class="form-control" id="Descripcion" rows="5" name="Descripcion" required></textarea>
    </div>

    <div class="form-group">
        <label >Objetivo: </label>
        <textarea class="form-control" id="Objetivo" rows="2" name="Objetivo" required></textarea>
    </div>
    <div class="row" >
        <div class="form-group col-md-4">
            <label >Teléfono: </label>
            <input  class="form-control" id="telefono" min="0" max="20000000" name="telefono" placeholder="Número de telefono" required>      
        </div>

        <div class="form-group col-md-4">
            <label >Correo: </label>
            <input type="email" class="form-control" name="correo" id="correo" placeholder="Example@example.com" required>      
        </div>

        <div class="form-group col-md-4">
            <label >Estado:</label>
            <select class="form-control" id="estadocita" name="estadocita" required>
                <option>En espera</option>
                <option>En proceso</option>
                <option>Cancelada</option>
                <option>Finalizada</option>
            </select>
        </div>
    </div>
    <div class="text-center" class="btncitas"> 
        <button type="guardar"  class="btn btn-primary col-md-2 boton btn-responsive btninter">Guardar</button>
        <button type="cancelar"  class="btn btn-secondary col-md-2 boton btn-responsive btninter" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/Cita/indexc.jsp'">Cancelar</button>
    </div>
    </br>

</form>
<jsp:include page="../Layout/footer.jsp" />
