<%@page contentType="text/html" pageEncoding="UTF-8"%>
    
<jsp:include page="Layout/header.jsp" /> 

<% 
    String tipo = "";
    try {
           tipo = session.getAttribute("tipo").toString();
        } catch (Exception e) {
            out.println(e.getMessage());
        }
    
%>
<br>
<br>
<div class="card-deck">
    <div class="row">
        <div class="col-md-3 col-lg-3 card border-light">
            <a <%if(tipo.equals("Asesor")){%>href="#" onclick="NoPermiso()"<%}else{%>href="Cliente/indexcl.jsp"<%}%>>
                <img src="../Imagenes/clientes.png" style="margin-inline-start: 5%;" class="card-img-top" alt="...">
            </a>
            <div class="card-body">
                <h5 class="card-title">Clientes</h5>
                <p class="card-text">En Este modulo, podra tener un listado de cada uno de los clientes con sus datos correspondientes, que se encuentran registrados en el sistema.</p>
            </div>
        </div>
        <div class="col-md-1 col-lg-1"></div>
        <div class="col-md-3 col-lg-3 card border-light">
            <a <%if(tipo.equals("Empleado cartera")){%>href="#" onclick="NoPermiso()"<%}else{%>href="Cita/indexc.jsp"<%}%>>
                <img src="../Imagenes/cita.png" style="margin-inline-start: 5%;" class="card-img-top" alt="...">
            </a>
            <div class="card-body">
                <h5 class="card-title">Citas</h5>
                <p class="card-text">En este modulo podra realizar un seguimiento a cada una de las citas programadas y podra crear una nueva cita de ser necesario.</p>
            </div>
        </div>
        <div class="col-md-1 col-lg-1"></div>
        <div class="col-md-3 col-lg-3 card border-light">
            <a  <%if(tipo.equals("Asesor")){%>href="#" onclick="NoPermiso()"<%}else{%>href="Reporte/indexr.jsp"<%}%>>
                <img src="../Imagenes/reporte.png" style="margin-inline-start: 5%;" class="card-img-top" alt="..."> 
            </a>
            <div class="card-body">
                <h5 class="card-title">Reportes</h5>
                <p class="card-text">En este modulo se podran encontrar una variedad de reportes, mediante la cual se facilitara el entendimiento de la informacion presentada en el sistema</p>
            </div>
        </div>  
    </div>
</div>

<jsp:include page="Layout/footer.jsp" />