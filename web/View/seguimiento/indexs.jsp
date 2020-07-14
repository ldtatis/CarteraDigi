<%-- 
    Document   : indexs
    Created on : 05-oct-2019, 20:22:07
    Author     : Mateo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<h1>Nuevo seguimiento</h1>
<form action="http://localhost:8080/ProyectoConstruccion/NuevoSeguimientoServlet" method="POST">
    <div class="row">
        <div class="form-group  col-md-2">
            <label for="proceso">Nro Proceso: </label>
            <input type="text" class="form-control" placeholder="<%out.println(request.getParameter("nroproceso"));%>" value="<%out.println(request.getParameter("nroproceso"));%>" name="IntTelefono" required readonly>               
        </div>

        <div class="form-group col-md-10">
            <label for="tipo">Resultado:</label>
            <select class="form-control" id="etipoproceso" name="resultado">
                <option>Cerrado</option>
                <option>Pendiente</option>
            </select>
        </div>
    </div>
    <div class="form-group ">
        <label for="causa">Descripcion: </label>
        <textarea type="text" class="form-control" id="descripcion" rows="6" aria-describedby="descripcion" placeholder="Descripcion del seguimiento" name="descripcion"> </textarea>       
    </div>

    <div class="text-center" class="btncitas">
        <button type="guardar" class="btn btn-primary col-md-2 boton" >Guardar</button>
        <button type="button" class="btn btn-secondary col-md-2 boton" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/ProcesoJuridico/indexpj.jsp'">VOLVER</button>
        
    </div>
    <br>
</form>


<jsp:include page="../Layout/footer.jsp" />

