<%-- 
    Document   : newjsp
    Created on : 15-ene-2016, 11:01:30
    Author     : gabip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <script type="text/ecmascript" src="jquery/js/jquery-1.11.1.min.js"></script> 
        <script type="text/ecmascript" src="jquery/js/trirand/jquery.jqGrid.min.js"></script>
        <script type="text/ecmascript" src="jquery/js/trirand/i18n/grid.locale-en.js"></script>
        <script type="text/javascript" src="js/resultado_nivel1.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="jquery/css/jquery-ui.css" />
        <link rel="stylesheet" type="text/css" media="screen" href="jquery/css/trirand/ui.jqgrid.css" />
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/flick/jquery-ui.css">
        <link rel="stylesheet" href="css/jqgrid_style.css">

        <meta charset="utf-8" />
        <title>Respuestas: Nivel 1</title>
    </head>
    <body>
        <div class="main-content">
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
            <div class="about-top">
                <!-- container-wrap -->
                <div class="container-wrap">
                    <div class="about-info">
                        <h2>Caso de Estudio</h2>
                    </div>
                    <div class="col-md-6 about-left">
                        <h2>Respuestas: Nivel 1</h2>
                        <p id="pres" > <b><i>Puntaje: 0</i></b></p>
                        <center><table id="jqGrid"></table>
                            <div id="jqGridPager"></div></center>

                    </div>
                    <div class="col-md-6 about-right">
                        <center>
                            <div class="banner-button">
                                <a href="nivel2.jsp" >Nivel 2</a>
                            </div>
                        </center>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    </body>
</html>
