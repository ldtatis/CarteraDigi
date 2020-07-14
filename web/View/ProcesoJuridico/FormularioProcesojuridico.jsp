<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<br>
<h1>Nuevo Proceso Juridico</h1>
<script src="http://localhost:8080/ProyectoConstruccion/js/validaciones.js"></script> 
<form action="http://localhost:8080/ProyectoConstruccion/NewProcessServlet" method="POST" onsubmit="return validar();">
    <div class="row">
        <div class="form-group  col-md-2">
            <label for="factura">Nro Factura: </label>
            <input type="number" min="0"  max="20000" class="form-control" id="causa" aria-describedby="factura" placeholder="Nro de factura" name="factura" required>        
        </div>
        <div class="form-group col-md-10">
            <label for="tipo">Tipo de proceso:</label>
            <select class="form-control" id="etipoproceso" name="tipo" required>
                <option>Juridico</option>
                <option>Prejuridico</option>
            </select>
        </div>
    </div>
    <div class="form-group ">
            <label for="causa">Causa: </label>
            <textarea type="text" class="form-control" id="causa" rows="6" aria-describedby="causa" placeholder="Causa del proceso jurídico" name="causa" required> </textarea>       
    </div>
    <div class="row">
        <div class="form-group col-md-6">
            <label for="abogado">Nombre del abogado: </label>
            <input type="text" class="form-control" id="abogado" aria-describedby="abogado" name="abogado" required>        
        </div>
        <div class="form-group col-md-6" >
            <label for="telefono">Telefono del abogado: </label>
            <input type="number" min="0"  class="form-control" id="abogado" aria-describedby="telefono" name="telefono" required>        
        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-4">
            <label for="contacto">Contacto del abogado: </label>
            <input type="text" class="form-control" id="abogado" aria-describedby="contacto" name="contacto" required>        
        </div>

        <div class="form-group col-md-4">
            <label for="correo">Correo del abogado: </label>
            <input type="email" class="form-control" id="abogado" aria-describedby="correo" name="correo" required>        
        </div>
        <div class="form-group col-md-4">
            <label for="direccion">Direcion del abogado: </label>
            <input type="text" class="form-control" id="abogado" aria-describedby="direccion" name="direccion" required>        
        </div>
    </div>
    <div class="row">
        <div class="form-group col-md-6">
            <label for="nombrejuzgado">Nombre Del juzgado: </label>
            <input type="text" class="form-control" id="nombrejuzgado" aria-describedby="nombrejuzgado" name="nombrejuzgado" required>
        </div>
        <div class="form-group col-md-6">
            <label for="ubicacionjuzgado">Ubicacion Del juzgado </label>
            <input type="text" class="form-control" id="ubicacionjuzgado" aria-describedby="ubicacionjuzgado" name="ubicacionjuzgado" required>
        </div>
    </div>
    <div class="text-center" class="btncitas">
        <button type="guardar" class="btn btn-primary col-md-2 boton" >Guardar</button>
        <button type="cancelar"  class="btn btn-secondary col-md-2 boton btn-responsive btninter" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/ProcesoJuridico/indexpj.jsp'">Cancelar</button>
    </div>
    <br>
</form>
<jsp:include page="../Layout/footer.jsp" />