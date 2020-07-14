<%@page import="java.sql.ResultSet"%>
<%@page import="Code.DbConnect" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="../Layout/header.jsp" />


<h1>Listado Citas</h1>

<form action="http://localhost:8080/ProyectoConstruccion/View/Cita/Crearcita.jsp">
    <button class="btn btn-primary"  type="submit" style="margin-bottom: 8px;" >Crear nueva cita</button></hr>  
</form>
<div class="table-responsive">
    <table class="table table-striped" id="datatable">
        <thead>
            <tr>
                <th scope="col">IdCita</th>
                <th scope="col">IdCliente</th>
                <th scope="col">IdUsuario</th>
                <th scope="col">Fecha</th>
                <th scope="col">Descripcion</th>
                <th scope="col">Objetivo</th>
                <th scope="col">Telefono</th>
                <th scope="col">Correo</th>
                <th scope="col">Estado</th>
                <th scope="col">Opciones</th>
            </tr>
        </thead>
        <tbody>
            <%
                DbConnect db = new DbConnect();
                ResultSet Consulta = db.DB().executeQuery("SELECT INT_ID_CITAS,INT_ID_CLIENTE,INT_ID_USUARIO,DATETIME_FECHA,NVARCHAR_DESCRIPCION,NVARCHAR_OBJETIVO,NVARCHAR_RESULTADO,INT_TELEFONO,NVARCHAR_CORREO FROM CITAS");
                while (Consulta.next()) {
            %>        
            <tr>
                <th><%out.println(Consulta.getString("INT_ID_CITAS"));%></th>
                <td><%out.println(Consulta.getString("INT_ID_CLIENTE"));%></td>
                <td><%out.println(Consulta.getString("INT_ID_USUARIO"));%></td>
                <td><%out.println(Consulta.getString("DATETIME_FECHA"));%></td>
                <td><%out.println(Consulta.getString("NVARCHAR_DESCRIPCION"));%></td>
                <td><%out.println(Consulta.getString("NVARCHAR_OBJETIVO"));%></td>
                <td><%out.println(Consulta.getString("INT_TELEFONO"));%></td>
                <td><%out.println(Consulta.getString("NVARCHAR_CORREO"));%></td>
                <td><%out.println(Consulta.getString("NVARCHAR_RESULTADO"));%></td>
                <td>     
                    <div class="row">
                        <div class="col-md">
                            <form class="form-inline my-2 my-lg-0" action="http://localhost:8080/ProyectoConstruccion/View/Cita/Estadocita.jsp" method="GET">
                                <input type="hidden" name="estado" id="estado" value="<%out.println(Consulta.getString("INT_ID_CITAS"));%>">
                                <button class="btn btn-primary my-2 my-sm-0" type="submit" data-toggle="tooltip" data-placement="top" title="Cambiar estado" onclick="myFunction()">
                                    <i class="fa fa-sign-out" style="color:black"></i>
                                </button>
                            </form>
                        </div>

                    </div>
                </td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>      
</br>
<div class="text-center" class="btncitas">
    <button type="volver"  class="btn btn-secondary col-md-2 boton btn-responsive btninter" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/Home.jsp'">Volver</button>
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



