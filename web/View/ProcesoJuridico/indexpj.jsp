<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="../Layout/header.jsp" />
<br>
<jsp:include page="TableProceso.jsp" />

<jsp:include page="../Layout/footer.jsp" />

<%

    String msg = "";
    try{
        msg = (String)session.getAttribute("respuesta");
    }catch(Exception e){
       
    }
    if(msg == "correcto"){
        
     %>
     <script type="text/javascript">InsertarCorrectamentePJ();</script>
<%   
    }else if(msg == "correcto2"){
        %>
     <script type="text/javascript">InsertarCorrectamenteS();</script>
<% 
}
    session.setAttribute("respuesta","incorrecto");

%>
