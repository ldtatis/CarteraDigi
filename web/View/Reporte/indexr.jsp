<%-- 
    Document   : indexr
    Created on : 22/09/2019, 12:11:19 PM
    Author     : Jojansantia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<h1>Reportes</h1>
<br>
<div class="list-group">
  <a href="http://localhost:8080/ProyectoConstruccion/View/Reporte/Abogados.jsp" class="list-group-item list-group-item-action">Abogados </a>
  <a href="http://localhost:8080/ProyectoConstruccion/View/Reporte/Juzgado.jsp" class="list-group-item list-group-item-action">Juzgados</a>
  <a href="http://localhost:8080/ProyectoConstruccion/View/Reporte/SeguimientoCerrado.jsp" class="list-group-item list-group-item-action">Seguimientos Cerrados</a>
  <a href="http://localhost:8080/ProyectoConstruccion/View/Reporte/SeguimientoPendiente.jsp" class="list-group-item list-group-item-action">Seguimientos Pendientes</a>
  <a href="http://localhost:8080/ProyectoConstruccion/View/Reporte/CitasEnEspera.jsp" class="list-group-item list-group-item-action">Citas En Espera</a>
  <a href="http://localhost:8080/ProyectoConstruccion/View/Reporte/CitasEnProceso.jsp" class="list-group-item list-group-item-action">Citas En Proceso</a>
  <a href="http://localhost:8080/ProyectoConstruccion/View/Reporte/CitasCanceladas.jsp" class="list-group-item list-group-item-action">Citas Canceladas</a>
  <a href="http://localhost:8080/ProyectoConstruccion/View/Reporte/CitasFinalizadas.jsp" class="list-group-item list-group-item-action">Citas Finalizadas</a>
</div>
<br>
<div class="text-center" class="btncitas">
    <button type="volver"  class="btn btn-secondary col-md-2 boton btn-responsive btninter" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/Home.jsp'">Volver</button>
</div>
</br>
<jsp:include page="../Layout/footer.jsp" />
