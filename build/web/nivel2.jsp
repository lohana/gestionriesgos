<%-- 
    Document   : nivel2
    Created on : 16-ene-2016, 14:01:12
    Author     : gabip
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <script src="https://code.jquery.com/jquery-2.1.1.js"></script>
        <script type="text/ecmascript" src="jquery/js/trirand/jquery.jqGrid.min.js"></script>
        <script type="text/ecmascript" src="jquery/js/trirand/i18n/grid.locale-en.js"></script>
        <script type="text/javascript" src="js/nivel2.js"></script>
        <script src="https://code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
        <script type="text/javascript" src="js/jquery-ui-slider-pips.js"></script>
        <script type="text/javascript" src="js/jqxcore.js"></script>
        <script type="text/javascript" src="js/jqxbuttons.js"></script>
        <script type="text/javascript" src="js/jqxscrollbar.js"></script>
        <script type="text/javascript" src="js/jqxlistbox.js"></script>
        <script type="text/javascript" src="js/jqxdropdownlist.js"></script>
        <link rel="stylesheet" href="css/jqx.base.css" type="text/css" />
        <link rel="stylesheet" type="text/css" media="screen" href="jquery/css/trirand/ui.jqgrid.css" />
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
        <link rel="stylesheet" href="css/jquery-ui-slider-pips.css">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.10.4/themes/flick/jquery-ui.css">
        <link rel="stylesheet" href="css/jqgrid_style.css">


        <meta charset="utf-8" />
        <title>Nivel 2</title>
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
                        <h2>Nivel 2: Mitigación de Riesgos</h2>
                        <p> Presupuesto del Proyecto: $71,000</p> 
                        <p> Porcentaje para gestión de riesgos: </p>
                        <div id='jqxWidget'></div>
                        <p id="pres"> <b><i>Costo total: 0.00 </i></b></p>
                        <br>
                        <center><table id="jqGrid"></table>
                            <div id="jqGridPager"></div></center>
                        <div class="slider"></div>

                    </div>
                    <div class="col-md-6 about-right">
                        <center>
                            <div class="banner-button">
                                <a href="index.html" onclick="getSelectedRows()">Finalizar</a>
                            </div>
                        </center>
                    </div>

                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    </body>
</html>
