<%-- 
    Document   : instroduccion
    Created on : 13-ene-2016, 12:37:51
    Author     : gabip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Introduccion</title>
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
            <!-- about -->

            <div class="banner">
                <!-- container-wrap -->
                <div class="container-wrap-wrap">
                    <div class="col-md-4 banner-img">
                        <img src="images/risk-management.png" alt="" />
                    </div>
                    <div class="col-md-8 banner-top-slide">
                        <div class="banner-top-text">
                            <h2>Gestión de Riesgos  </h2>
                            <h5>Caso de Estudio</h5>
                        </div>
                        <div class="banner-bottom-bottom">
                            <div class="banner-top-slide-grids">
                                <script src="js/responsiveslides.min.js"></script>

                                <div  id="top" class="callbacks_container-wrap">
                                    <div class="banner-slid">
                                        <h3>La Gestión de los Riesgos del Proyecto incluye los procesos relacionados con llevar 
                                            a cabo la planificación de la gestión, la identificación, el análisis, 
                                            la planificación de respuesta a los riesgos, así como su monitoreo y control en un proyecto.
                                        </h3>
                                        <p> Los objetivos de la Gestión de los Riesgos del Proyecto son aumentar la 
                                            probabilidad y el impacto de eventos positivos, y disminuir la probabilidad 
                                            y el impacto de eventos negativos para el proyecto.</p>
                                        <div class="banner-button">
                                            <a href="introcaso.jsp" >Continuar</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <!-- //container-wrap -->
            </div>
            <!-- about-top -->
        </div>
    </body>
</html>
