<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" charset="utf-8" content="text/html">
        <title>Proyecto</title>       
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/ProyectoConstruccion/css/StyleAll.css">  
        <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="shortcut icon" href="#"/>
        <link rel="icon" type="image/png" href="Imagenes/favicon.ico"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@8.18.0/dist/sweetalert2.min.css">   
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
        <script src="http://localhost:8080/ProyectoConstruccion/vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8.18.0/dist/sweetalert2.all.min.js" integrity="sha256-iXdGyIL/5MVDKsBUG9XfHuXykk0JHnZhGtJeVgpPAhk=" crossorigin="anonymous"></script>
        <script src="http://localhost:8080/ProyectoConstruccion/js/alertas.js"></script> 
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

    </head>
    <body>       
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
               <a class="navbar-brand" href="http://localhost:8080/ProyectoConstruccion/View/Home.jsp"><i class="fa fa-suitcase" style="font-size: 30px;"></i> Menú</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>             
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <% String tipo = "";
                        try {
                                if((session.getAttribute("tipo") != null) || (session.getAttribute("tipo") != "") ){
                                     tipo = session.getAttribute("tipo").toString();
                                }
                            } catch (Exception e) {
                                out.println(e.getMessage());
                                %>
                            <script type="text/javascript">
                             ErrorLogin();
                             </script>
                        <%
                            }

                            
                            if(tipo.equals("Asesor")){%>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Cita/indexc.jsp">Citas</a>
                        </li>
                        <%}else if(tipo.equals("Empleado cartera")){%>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Factura/indexf.jsp">Facturas</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Cliente/indexcl.jsp">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Reporte/indexr.jsp">Reportes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/ProcesoJuridico/indexpj.jsp">Procesos Juridicos</a>
                        </li>
                        <%}else{%>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Factura/indexf.jsp">Facturas</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Cita/indexc.jsp">Citas</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Cliente/indexcl.jsp">Clientes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Reporte/indexr.jsp">Reportes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/ProcesoJuridico/indexpj.jsp">Procesos Juridicos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Registros.jsp">Importar Datos</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost:8080/ProyectoConstruccion/View/Usuario/indexcu.jsp">Registro Usuarios</a>
                        </li>
                        <%}%>
                    </ul>
                    <form class="form-inline my-2 my-lg-0" action="http://localhost:8080/ProyectoConstruccion/LoginServlet" method="get">                       
                        <button class="btn btn-outline-light my-2 my-sm-0" type="submit">${sessionScope.nombre}! <i class="fa fa-sign-out"></i></button>
                    </form>
                </div>
            </nav>    
           <div class="container">