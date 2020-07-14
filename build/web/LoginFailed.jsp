<%-- 
    Document   : LoginFailed
    Created on : 30-sep-2019, 15:38:02
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">	
        <link rel="icon" type="image/png" href="Imagenes/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">  
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-login100" style="background: linear-gradient(-135deg, #61bbe6, #2064a2);">
            <div class="wrap-login100" style="width: auto; height: auto; padding-right: 5em;">
                <div class="login100-pic js-tilt" data-tilt >
                    <center>                      
                            <span class="login100-form-title">
                            Usuario o Contrasena no coinciden.
                            </span>
                            <a href="index.jsp"><img src="Imagenes/auto-reply.png" alt="IMG"></a>
                            <span class="login100-form-title">
                                 Regresar.
                            </span>                        
                    </center>
                </div>
            </div>
        </div>
         <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/tilt/tilt.jquery.min.js"></script>
        <script >
                $('.js-tilt').tilt({
                        scale: 1.1
                })
        </script>        
        <script src="js/main.js"></script>
    </body>
</html>
