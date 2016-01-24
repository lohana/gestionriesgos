<%-- 
    Document   : instruccion
    Created on : 13-ene-2016, 13:48:02
    Author     : gabip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Instrucciones</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Baseball Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- bootstrap-css -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!--// bootstrap-css -->
        <!-- css -->
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <link href="css/styles.css?v=1.6" rel="stylesheet">
        <link rel="stylesheet" href="css/lightbox.css">
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
                <div class="header-right">
                    <div class="social">
                        <ul>
                            <li> Usuario: <%=session.getAttribute("user")%></li>
                        </ul>
                    </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <!-- //header -->

            <!-- rules -->
            <div class="rules">
                <!-- container-wrap -->
                <div class="container-wrap">
                    <div class="rules-info">
                        <h3>Reglas</h3>
                    </div>
                    <div class="rules-top-grids">
                        <div class="rules-grids">
                            <div class="col-md-6 rules-grid">
                                <div class="rules-left">
                                    <div class="im1">
                                        <img src="images/1.png"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 rules-grid">
                                <div class="rules-right">
                                    <h5>Nivel 1</h5>
                                    <p>Los componentes del riesgo son Impacto y probabilidad.
                                        Clasificar los riesgos como Muy Alto, Alto, Medio, Bajo o Muy Bajo.
                                        Para lograrlo arrastrar el círculo con la clasificación deseada hacia el  casillero gris (Respuesta).
                                    </p>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="rules-grids">
                            <div class="col-md-6 rules-grid">
                                <div class="rules-left">
                                    <div class="im2">
                                        <img src="images/2.png"/>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6 rules-grid">
                                <div class="rules-right">
                                    <h5>Nivel 2</h5>
                                    <p>Seleccionar los riesgos que se van a mitigar considerando, el presupuesto asignado para gestión de riesgos.
                                        <br><br></p>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <center>
                        <div class="banner-button">
                            <a href="inicioServ" >Empezar</a>
                        </div>
                    </center>
                </div>
                <!-- //container-wrap -->
            </div>
            <!-- //rules -->
        </div>

    </body>
</html>
