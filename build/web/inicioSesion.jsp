<%-- 
    Document   : inicioSesion
    Created on : 13-ene-2016, 11:54:20
    Author     : gabip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gestión de Riesgos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
         <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- bootstrap-css -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!--// bootstrap-css -->
        <!-- css -->
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <link href="css/styles.css?v=1.6" rel="stylesheet">
        <!--// css -->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/scripts.js?v=1.7"></script>
        <script src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>	
    </head>
    <body>
        <div class="main-content">
            <!-- header -->

            <div class="header-top">
                <div class="head-logo">
                    <h1><a href="index.html">Gestión de Riesgos</a></h1>
                </div>

                <div class="clearfix"> </div>
            </div>
            <!-- //header -->
            <!-- banner -->
            <div class="about-top">
                <!-- container-wrap -->
                <div class="container-wrap">
                    <div class="about-info">
                        <h2>Caso de Estudio</h2>
                    </div>
                    <div class="about-grids about-top-grids">
                        <div class="col-md-6 about-left">
                            <h2>Inicio de Sesión</h2>
                            <form name="f1" action="LoginServ" method="post">
                                <input id="user" name="user" type="text" placeholder="Usuario" name="email" data-name="Email" required="required" class="w-input field">
                                <br>
                                <input id="pass" name="pass" type="password" placeholder="Contraseña" name="pass" data-name="Pass" required="required" class="w-input field">
                                <br>
                                <input type="submit" value="Iniciar" data-wait="Please wait..." class="w-button button">
                            </form>
                        </div>
                        <div class="col-md-6 about-right">
                            <img src="images/users1.png" alt="" class="imgMain">
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>   
            <!-- //banner -->
        </div>
    </body>	
</html>
