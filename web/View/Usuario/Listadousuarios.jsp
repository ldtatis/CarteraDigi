<%@page import="java.sql.ResultSet"%>
<%@page import="Code.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<br>
<h1>Listado Usuarios</h1>
<form action="CrearUsuario.jsp">
    <button  type="submit" class="btn btn-primary" style="margin-bottom: 12px;"/><i class="fa fa-tasks"></i> Nuevo Usuario</button>
</form>
<div class="table-responsive " >
    <table class="table table-striped" id="datatable">
        <thead>
            <tr>
                <th scope="col">Id Usuario</th>
                <th scope="col">Nombre</th>
                <th scope="col">Apellido</th>
                <th scope="col">Tipo</th>
                <th scope="col">Login</th>
                <th scope="col">Telefono</th>
                <th scope="col">Correo</th>
            </tr>
        </thead>
        <tbody>
            <%
                DbConnect db = new DbConnect();
                ResultSet Consulta = db.DB().executeQuery("SELECT * FROM USUARIO");
                while (Consulta.next()) {
            %>
            <tr>
                <th><%out.println(Consulta.getString("INT_ID_USUARIO"));%></th>
                <td><%out.println(Consulta.getString("NVARCHAR_NOMBRE"));%></td>
                <td><%out.println(Consulta.getString("NVARCHAR_APELLIDO"));%></td>
                <td><%out.println(Consulta.getString("NVARCHAR_TIPO"));%></td>
                <td><%out.println(Consulta.getString("NVARCHAR_LOGIN"));%></td>
                <td><%out.println(Consulta.getString("INT_TELEFONO"));%></td>     
                <td><%out.println(Consulta.getString("NVARCHAR_CORREO"));%></td>     
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

