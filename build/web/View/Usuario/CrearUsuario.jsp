<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<br>
<script src="http://localhost:8080/ProyectoConstruccion/js/validaciones.js"></script> 
<form action="http://localhost:8080/ProyectoConstruccion/RegisterUserServlet" method="POST" onsubmit="return validar();">
    <div class="container">
        <h1>Registrar usuario</h1>
        <div class="col-md-2"></div> 
        <div class="col-md-12 shadow-lg p-3 mb-5 bg-white rounded">             
            <div for="example-text-input" class="form-group row">
                <label  class="col-2 col-form-label">Nombre</label>
                <div class="col-10">
                    <input class="form-control" type="text" placeholder="Digite el nombre" name="TxtNombre" onkeypress="return soloLetras(event)" required>
                </div>
            </div>       
            <div class="form-group row ">
                <label for="example-number-input" class="col-2 col-form-label">Apellido</label>
                <div class="col-10">
                    <input class="form-control" type="text" placeholder="Digite el Apellido" name="TxtApellido" onkeypress="return soloLetras(event)" required>
                </div>
            </div>          
            <div class="form-group row">
                <label for="example-tel-input" class="col-2 col-form-label">Telefono</label>
                <div class="col-10">
                    <input class="form-control" type="text" placeholder="Digite Telefono" name="IntTelefono" required>
                </div>
            </div>              
            <div class="form-group row">
                <label for="example-email-input" class="col-2 col-form-label">Correo</label>
                <div class="col-10">
                    <input class="form-control" type="email" placeholder="Digite el correo electronico" name="TxtCorreo" required>
                </div>
            </div>  
            <div class="form-group row ">
                <label for="example-text-input" class="col-2 col-form-label">Nombre de usuario</label>
                <div class="col-10">
                    <input class="form-control" type="text" placeholder="Digite nombre de usuario" name="TxtLogin" required>
                </div>
            </div>       
            <div class="form-group row">
                <label for="example-password-input" class="col-2 col-form-label">Contraseña</label>
                <div class="col-10">
                    <input class="form-control" type="password" placeholder="Digite Contraseña" name="TxtContrasena" required>
                </div>
            </div>
            <div class="form-group row ">
                <label for="inputState" class="col-2 col-form-label" required>Tipo de usuario</label>
                <div class="col-10">
                    <select class="form-control" name="TxtTipo">
                        <option selected>Escoja una opción</option>
                        <option>Administrador</option>
                        <option>Asesor</option>
                        <option>Empleado cartera</option>
                    </select>
                </div>    
            </div>


            <div class="text-center" class="btncitas">
                <button type="submit" class="btn btn-primary col-md-2 boton btn-responsive btninter" value="Crear">Crear  </button>
                <button type="volver"  class="btn btn-secondary col-md-2 boton btn-responsive btninter" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/Usuario/indexcu.jsp'">Volver</button>
            </div>
            </br>
        </div>
        <div class="col-2"></div>
    </div>
</form>
<jsp:include page="../Layout/footer.jsp" />


<%

    String msg = "";
    try {
        msg = (String) session.getAttribute("respuesta");
    } catch (Exception e) {

    }
    if (msg == "correcto") {

%>
<script type="text/javascript">InsertarCorrectamente();</script>
<%    }
    session.setAttribute("respuesta", "incorrecto");

%>