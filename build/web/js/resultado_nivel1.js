/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function $_GET(param) {
    var vars = {};
    window.location.href.replace(
            /[?&]+([^=&]+)=?([^&]*)?/gi, // regexp
            function (m, key, value) { // callback
                vars[key] = value !== undefined ? value : '';
            }
    );

    if (param) {
        return vars[param] ? vars[param] : null;
    }
    return vars;
}
var val = $_GET('val');
val = val.split("-");
var puntuaciones = $_GET('cal');
puntuaciones = puntuaciones.split("-");
var correctas = $_GET('pun');
correctas = correctas.split("-");
var riesgos = [];
var desc_riesgo = [
    "Poca definición de los requerimientos.", "Es posible que no se hayan identificado interfaces con otros sistemas.",
    "El diseño de las pruebas podría hacerse no muy rigurosamente (suficientes pruebas) al no hacerlo con una técnica adecuada.",
    "Las especificaciones podrían no estar a suficiente detalle para escribir el código.",
    "La integración del producto no estaría bien especificada. Lo relativo a los códigos de los pacientes.",
    "Posiblemente no haya especificaciones de requerimientos de seguridad de los datos de los pacientes.",
    "Posiblemente no se haya especificado los planes para todas las actividades del desarrollo. Especialmente para la fase requerimientos y gestión.",
    "Los desarrolladores no podrían estar familiarizados con la técnica TDD, incluso luego de haber recibido capacitación.",
    "Posiblemente no se maneje bien el control de cambios.",
    "Poca familiaridad con Eclipse y JUnit por parte de los desarrolladores. Podría causar retrasos y bajar la calidad del software.",
    "Demoras en el tiempo de desarrollo debido a que el personal podría no estar entrenado adecuadamente para el proyecto.",
    "El cronograma no podría ser realista, posiblemente no se haya incluido la etapa de migración de los datos."
];
for (var i = 0; i < 12; i++) {
    if (val[i] === "muyalto") {
        val[i] = "muy alto.png";
    } else if (val[i] === "alto") {
        val[i] = "alto.png";
    } else if (val[i] === "medio") {
        val[i] = "medio.png";
    } else if (val[i] === "bajo") {
        val[i] = "bajo.png";
    } else {
        val[i] = "muy bajo.png";
    }

    if (correctas[i] === "muyalto") {
        correctas[i] = "muy alto.png";
    } else if (correctas[i] === "alto") {
        correctas[i] = "alto.png";
    } else if (correctas[i] === "medio") {
        correctas[i] = "medio.png";
    } else if (correctas[i] === "bajo") {
        correctas[i] = "bajo.png";
    } else {
        correctas[i] = "muy bajo.png";
    }
}
var suma = 0;
for (var i = 0; i < 12; i++) {
    riesgos[i] = {des_riesgo: desc_riesgo[i], puntuacion: puntuaciones[i], valoracion: val[i], correcta: correctas[i]};
    suma = suma + parseInt(puntuaciones[i]);
}
//alert(suma);
$(document).ready(function () {
    document.getElementById("pres").innerHTML = '<b><i>Puntaje total:' + suma + '</i></b>';

    $("#jqGrid").jqGrid({
        datatype: "local",
        data: riesgos,
        height: 250,
        width: 800,
        colModel: [
            {label: 'Descrpción del Riesgo', name: 'des_riesgo', width: 250, key: true},
            {label: 'Puntuación', name: 'puntuacion', formatter: 'integer', width: 60, align: 'center'},
            {label: 'Valoración', name: 'valoracion', width: 80, align: 'center',
                formatter: formatImage},
            {label: 'Respuesta Correcta', name: 'correcta', width: 80, align: 'center',
                formatter: formatImage}
        ],
        viewrecords: true, // show the current page, data rang and total records on the toolbar
        caption: "Resultados: Nivel 1",
        rownumbers: true,
    });
});
function formatImage(cellValue, options, rowObject) {
    var imageHtml = "<img src='images/" + cellValue + "' originalValue='" + cellValue + "' class='imtd2'/>";
    return imageHtml;
}
function unformatImage(cellValue, options, cellObject) {
    return $(cellObject.html()).attr("originalValue");
}


