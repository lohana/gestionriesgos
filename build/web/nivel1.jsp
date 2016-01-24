<%-- 
    Document   : nivel1
    Created on : 13-ene-2016, 13:49:59
    Author     : gabip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Categorizar Riesgo</title>
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
        <script type="text/javascript" src="js/nivel1.js"></script>

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

            <div class="banner1">
                <!-- container-wrap -->
                <div class="container-wrap-wrap">
                    <div class="col-md-5 casen1">
                            <h2>Caso de Estudio</h2>
                            <p> Los servicios públicos locales de salud almacenan datos de consultas de pacientes de hospitales y centros de salud. Actualmente los datos son usados únicamente con propósitos estadísticos. Los hospitales y centros de salud tienen diferente número de historia clínica, esto significa que no se tiene un identificador único para los pacientes. El Ministerio de Salud desea usar un sistema como base para establecer una base de datos de historias clínicas. La base de datos ofrecerá a los hospitales y centros de salud, acceso a las historias clínicas de los pacientes, permitiendo que las decisiones sean tomadas de forma inmediata sin tener que esperar que sean transferidos los registros médicos. El Sistema Médico intenta migrar todos los datos existentes, en una nueva base de datos histórica. Una vez que el nuevo sistema es desplegado, se intenta que todos los pacientes reciban tratamiento estén con un único número de historia clínica que sea usado en los centros médicos y hospitales. El tiempo de entrega del sistema funcionando será de dos años y el presupuesto es de 4 millones de dólares americanos.
                                Se tiene realizado el levantamiento de los requisitos mediante un proyecto anterior de ingeniería de requerimientos. Se va a desarrollar con la técnica Test Driven Development (TDD). El equipo de desarrollo está constituido por desarrolladores junior con máximo dos años de experiencia en programación y sin experiencia en TDD.
                                Evaluar los niveles de integridad de seguridad del sistema. Existe por ejemplo un número de riesgos de seguridad inherente en el sistema propuesto. Por ejemplo el riesgo de que los datos existentes en los sistemas antiguos no sean identificados correctamente y asignados al paciente correcto o que el paciente en el nuevo sistema no se le enlace su historial previo correctamente. En ambos casos podría ocurrir un diagnóstico o tratamiento incorrecto debido a que la historia clínica completa no está disponible.
                            </p>
                    </div>
                    <div class="col-md-6 banner-top-slide">
                        <div class="banner-top-text">
                            <h3>Nivel 1: Categorizar Riesgos</h3>
                        </div>
                        <div class="banner-bottom-bottom">
                            <div class="banner-top-slide-grids">
                                <div  id="top" class="callbacks_container-wrap">
                                    <div class="banner-slid">                           
                                        <p id="desc_Riesgo"> <b><i>1. Poca definición de los requerimientos.</i></b></p>

                                        <table style="width:80%">
                                            <tr>
                                                <th colspan="5">Probabilidad</th>
                                                <th align="left">Respuesta</th>
                                            </tr>
                                            <tr>
                                                <td id="td_pro1" class="pointer"><img id="pro_muyalto" src="images/muy alto.png" alt="" draggable="true" ondragstart="drag(event)" class="imtd1" /></td>
                                                <td id="td_pro2" class="pointer"><img id="pro_alto" src="images/alto.png" draggable="true" ondragstart="drag(event)" alt="" class="imtd1"></td>		
                                                <td id="td_pro3" class="pointer"><img id="pro_medio" src="images/medio.png"  draggable="true" ondragstart="drag(event)" alt="" class="imtd1"/></td>
                                                <td id="td_pro4" class="pointer"><img id="pro_bajo" src="images/bajo.png"  draggable="true" ondragstart="drag(event)" alt="" class="imtd1"/></td>
                                                <td id="td_pro5" class="pad"><img id="pro_muybajo"  src="images/muy bajo.png" draggable="true" ondragstart="drag(event)" alt="" class="imtd1"/> </td>
                                                <td id="r1"ondrop="drop(event)" ondragover="allowDrop(event)" class="r1"></td>
                                            </tr>

                                        </table>
                                        <table style="width:80%">
                                            <tr>
                                                <th colspan="5">Impacto</th>
                                                <th ><center>Respuesta</center></th>

                                            </tr>
                                            <tr>
                                                <td id="td_im1" class="pointer"><img id="im_muyalto" src="images/muy alto.png" alt="" draggable="true" ondragstart="drag(event)" class="imtd1" /></td>
                                                <td id="td_im2" class="pointer"><img id="im_alto" src="images/alto.png" draggable="true" ondragstart="drag(event)" alt="" class="imtd1"></td>		
                                                <td id="td_im3" class="pointer"><img id="im_medio" src="images/medio.png"  draggable="true" ondragstart="drag(event)" alt="" class="imtd1"/></td>
                                                <td id="td_im4" class="pointer"><img id="im_bajo" src="images/bajo.png"  draggable="true" ondragstart="drag(event)" alt="" class="imtd1"/></td>
                                                <td id="td_im5" class="pad"><img id="im_muybajo"  src="images/muy bajo.png" draggable="true" ondragstart="drag(event)" alt="" class="imtd1"/> </td>
                                                <td id="r2" class="r1" ondrop="drop(event)" ondragover="allowDrop(event)"> </td>

                                            </tr>

                                        </table>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="banner-button" align="center">
                            <input type="submit" onclick="siguiente()" value="Siguiente" data-wait="Please wait..." class="w-button button">
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <!-- //container-wrap -->
            </div>
            <!-- about-top -->
        </div>


        <style type="text/css">
            .pointer td:hover {
                cursor:pointer;
            }
        </style>
    </body>
</html>
