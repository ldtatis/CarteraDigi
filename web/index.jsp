<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!doctype html>
<html>
    <head>
        <!-- meta tags requeridos-->
        <meta http-equiv="Content-Type" charset="utf-8" content="text/html">
	<meta name="viewport" content="width=device-width, initial-scale=1">	
        <link rel="icon" type="image/png" href="Imagenes/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">      
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">    
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">          
        <title>Taller ProyectoSW</title>
    </head>
    <body>
        <br>
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <div class="login100-pic js-tilt" data-tilt>
                        <img src="Imagenes/img-01.png" alt="IMG">
                    </div>

                    <form class="login100-form validate-form" method="POST" action="LoginServlet">
                        <span class="login100-form-title">
                            Gestion De Cartera
                        </span>

                        <div class="wrap-input100 validate-input" data-validate = "Ingrese un Usuario Valido">
                            <input class="input100" type="text" name="usuario" placeholder="Usuario">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-user" aria-hidden="true"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate = "Ingrese una contrasena valida">
                            <input class="input100" type="password" name="contrasena" placeholder="Contraseña">
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </span>
                        </div>

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn" name="action" value="Sign In">
                                Ingresar
                            </button>
                        </div>
                        <div class="text-center p-t-12">
                        <div class="text-center p-t-136">
                        </div>
                    </form>
                </div>
            </div>
        </div>
 <br>
        	
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

