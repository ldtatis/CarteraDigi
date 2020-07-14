<%-- 
    Document   : TableProceso
    Created on : 05-oct-2019, 18:34:20
    Author     : Mateo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Code.DbConnect"%>


<h1>Listado Procesos juridicos</h1>
<form action="FormularioProcesojuridico.jsp">
    <button  type="submit" class="btn btn-primary" style="margin-bottom: 12px;"/><i class="fa fa-tasks"></i>Nuevo Proceso Juridico</button>
</form>
<div class="table-responsive">
    <table class="table table-striped" id="datatable">
        <thead>
        <tr>
            <th scope="col">#Nro Proceso</th>
            <th scope="col">#Nro Factura</th>
            <th scope="col">Causa</th>
            <th scope="col">Tipo de proceso</th>
            <th scope="col">Nombre del abogado</th>
            <th scope="col">Nombre del Juzgado</th>
            <th scope="col">Opciones</th>
        </tr>
    </thead>
    <tbody>
            <%
                DbConnect db = new DbConnect();
                ResultSet Consulta = db.DB().executeQuery("EXEC GestionCarteraDB.dbo.[TB_PROCCESOS]");
                while (Consulta.next()) {
            %>
            <tr>
                <th><%out.println(Consulta.getString("INT_ID_PROCESO"));%></th>
                <td><%out.println(Consulta.getString("INT_ID_FACTURA"));%></td>
                <td><%out.println(Consulta.getString("NVARCHAR_CAUSA"));%></td>
                <td><%out.println(Consulta.getString("NVARCHAR_TIPO_PROCESO"));%></td>
                <td><%out.println(Consulta.getString("NOMBREABOGADO"));%></td>
                <td><%out.println(Consulta.getString("NOMBREJUZGADO"));%></td>
                <td> 
                    <div class="row">
                        <div class="col-md">
                            <form class="form-inline my-2 my-lg-0" action="http://localhost:8080/ProyectoConstruccion/View/seguimiento/indexs.jsp" method="get">
                                <input type="hidden" name="nroproceso" id="nroproceso" value="<%out.println(Consulta.getString("INT_ID_PROCESO"));%>">
                                <button class="btn btn-primary my-2 my-sm-0" type="submit" data-toggle="tooltip" data-placement="top" title="Nuevo Seguimiento" onclick="myFunction()">
                                    <i class="fa fa-sign-out" style="color:black"></i>
                                </button>
                            </form>
                        </div>
                        <div class="col-md">
                            <form class="form-inline my-2 my-lg-0" action="http://localhost:8080/ProyectoConstruccion/View/seguimiento/ListaSeguimientos.jsp" method="get">   
                                <input type="hidden" name="nroproceso1" id="nroproceso1" value="<%out.println(Consulta.getString("INT_ID_PROCESO"));%>">
                                <button class="btn btn-primary my-2 my-sm-0" type="submit" data-toggle="tooltip" data-placement="top" title="Seguimientos Actuales" onclick="myFunction()">
                                    <i class="fa fa-tasks" style="color:black"></i>
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
<br>
<div class="text-center" class="btncitas">
    <button type="volver"  class="btn btn-secondary col-md-2 boton btn-responsive btninter" onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/Home.jsp'">Volver</button>
</div>
</br>

