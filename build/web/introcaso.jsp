<%-- 
    Document   : introcaso
    Created on : 13-ene-2016, 13:23:26
    Author     : gabip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Introducción al caso</title>
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
            <!-- about-top -->
            <div class="about-top">
                <!-- container-wrap -->
                <div class="container-wrap">
                    <div class="about-info">
                        <h2>Caso de Estudio</h2>
                    </div>
                    <div class="about-grids about-top-grids">
                        <div class="col-md-6 about-left">
                            <h2>Introducción al Caso</h2>
                            <p> Los servicios públicos locales de salud almacenan datos de consultas de pacientes de hospitales y centros de salud. Actualmente los datos son usados únicamente con propósitos estadísticos. Los hospitales y centros de salud tienen diferente número de historia clínica, esto significa que no se tiene un identificador único para los pacientes. El Ministerio de Salud desea usar un sistema como base para establecer una base de datos de historias clínicas. La base de datos ofrecerá a los hospitales y centros de salud, acceso a las historias clínicas de los pacientes, permitiendo que las decisiones sean tomadas de forma inmediata sin tener que esperar que sean transferidos los registros médicos. El Sistema Médico intenta migrar todos los datos existentes, en una nueva base de datos histórica. Una vez que el nuevo sistema es desplegado, se intenta que todos los pacientes reciban tratamiento estén con un único número de historia clínica que sea usado en los centros médicos y hospitales. El tiempo de entrega del sistema funcionando será de dos años y el presupuesto es de 4 millones de dólares americanos.
                                Se tiene realizado el levantamiento de los requisitos mediante un proyecto anterior de ingeniería de requerimientos. Se va a desarrollar con la técnica Test Driven Development (TDD). El equipo de desarrollo está constituido por desarrolladores junior con máximo dos años de experiencia en programación y sin experiencia en TDD.
                                Evaluar los niveles de integridad de seguridad del sistema. Existe por ejemplo un número de riesgos de seguridad inherente en el sistema propuesto. Por ejemplo el riesgo de que los datos existentes en los sistemas antiguos no sean identificados correctamente y asignados al paciente correcto o que el paciente en el nuevo sistema no se le enlace su historial previo correctamente. En ambos casos podría ocurrir un diagnóstico o tratamiento incorrecto debido a que la historia clínica completa no está disponible.
                            </p>
                        </div>
                        <div class="col-md-6 about-right">
                            <center>
                                <img src="images/g9232.png" alt="" class="imagenIntro">
                                <div class="banner-button">
                                    <a href="instruccion.jsp" >Continuar</a>
                                </div>
                            </center>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                </div>
            </div>
            <!-- about-top -->
            <!-- about-team -->


        </div>

    </body>
</html>
