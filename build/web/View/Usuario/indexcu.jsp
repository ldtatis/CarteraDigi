<%-- 
    Document   : indexr
    Created on : 22/09/2019, 12:11:19 PM
    Author     : Jojansantia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<jsp:include page="Listadousuarios.jsp" />
<jsp:include page="../Layout/footer.jsp" />

<%

    String msg = "";
    try{
        msg = (String)session.getAttribute("respuesta");
    }catch(Exception e){
       
    }
    if(msg == "correcto"){
        
     %>
     <script type="text/javascript">InsertarCorrectamenteU();</script>
<%   
    }

    session.setAttribute("respuesta","incorrecto");

%>


