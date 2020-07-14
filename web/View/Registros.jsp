<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="Layout/header.jsp" /> 

<br><br>

<div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-8">
        <div class="card mb-2">
            <img src="../Imagenes/registros.png" class="card-img-top" alt="...">
            <div class="card-body">

                <form action="uploadfile.jsp" method="post" enctype="multipart/form-data" >
                    <div class="form-group">
                        <input type="file" class="form-control-file " id="file" name="file">
                    </div>
                    <div class="text-center" class="btncitas">
                        <input type="submit" class="form-control-file btn btn-primary " value="Subir Archivos">
                    </div><br/>
                    <!--<div class="btn-volver"  class="text-center" class="btncitas">
                        <input  value="Volver"  id="btn-volver" class=" form-control-file btn btn-secondary  " onclick="location.href = 'http://localhost:8080/ProyectoConstruccion/View/Home.jsp'">

                    </div>-->
                </form>
            </div>
        </div> 
    </div>
    <div class="col-md-2"></div>
</div>

<br><br>

<jsp:include page="Layout/footer.jsp" />
<%

    String msg = "";
    try{
        msg = (String)session.getAttribute("respuesta");
    }catch(Exception e){
       
    }
    if(msg == "correcto"){
        
     %>
     <script type="text/javascript">InsertarCorrectamenteRegistros();</script>
<%   
    }
    session.setAttribute("respuesta","incorrecto");

%>