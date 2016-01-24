/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var riesgos = [
    "1. Poca definición de los requerimientos.</i></b>",
    "<b><i> 2. Es posible que no se hayan identificado interfaces con otros sistemas.</i></b>",
    "<b><i> 3. El diseño de las pruebas podría hacerse no muy rigurosamente (suficientes pruebas) al no hacerlo con una técnica adecuada.</i></b>",
    "<b><i> 4. Las especificaciones podrían no estar a suficiente detalle para escribir el código.</i></b>",
    "<b><i> 5. La integración del producto no estaría bien especificada. Lo relativo a los códigos de los pacientes.</i></b>",
    "<b><i> 6. Posiblemente no haya especificaciones de requerimientos de seguridad de los datos de los pacientes.</i></b>",
    "<b><i> 7. Posiblemente no se haya especificado los planes para todas las actividades del desarrollo. Especialmente para la fase requerimientos y gestión.</i></b>",
    "<b><i> 8. Los desarrolladores no podrían estar familiarizados con la técnica TDD, incluso luego de haber recibido capacitación.</i></b>",
    "<b><i> 9. Posiblemente no se maneje bien el control de cambios.</i></b>",
    "<b><i> 10. Posiblemente no se maneje bien el control de cambios.</i></b>",
    "<b><i> 11. Demoras en el tiempo de desarrollo debido a que el personal podría no estar entrenado adecuadamente para el proyecto.</i></b>",
    "<b><i> 12. El cronograma no podría ser realista, posiblemente no se haya incluido la etapa de migración de los datos.</i></b>"];
var respuestaimp = ["BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO"];
var respuestaprob = ["BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO", "BAJO"];
var indice = 1;
function siguiente() {
    var list = document.getElementById("r1");
    var list1 = document.getElementById("r2");

    while (list.hasChildNodes()) {
        list.removeChild(list.firstChild);
        list1.removeChild(list1.firstChild);
    }

    if (indice < riesgos.length) {
        document.getElementById("desc_Riesgo").innerHTML = riesgos[indice];
        indice++;
    } else {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (xhttp.readyState === 4 && xhttp.status === 200) {
                var data = xhttp.responseText;
                // alert(data);
                window.open("res_nivel1.jsp?" + data, "_self");
            }
        };
        var index = 0;
        var s_impacto = "";
        var s_probabilidad = "";
        while (index < respuestaimp.length) {
            s_impacto = s_impacto + index + respuestaimp[index] + "-";
            s_probabilidad = s_probabilidad + index + respuestaprob[index] + "-";
            index++;
        }
        xhttp.open("POST", "envioClass", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("imp=" + s_impacto + "&prob=" + s_probabilidad + "");
    }
}

function allowDrop(ev) {
    ev.preventDefault();
    if (ev.target.id === 'r1') {
        var list = document.getElementById("r1");
    } else if (ev.target.id === 'r2')
    {
        var list = document.getElementById("r2");
    }
    if (list.hasChildNodes()) {
        while (list.hasChildNodes()) {
            list.removeChild(list.firstChild);
        }
    }
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
    ev.effectAllowed = "copyMove";

}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    // alert(data + "drop: " + ev.target.id);
    if (ev.target.id === 'r1') {
        if (data === 'pro_muyalto' || data === 'pro_alto' || data === 'pro_medio' || data === 'pro_muybajo' || data === 'pro_bajo') {
            var nodeCopy = document.getElementById(data).cloneNode(true);
            nodeCopy.id = "r1";
            ev.target.appendChild(nodeCopy);
            respuestaprob[indice - 1] = data;
            //list.replaceNode(nodeCopy);

        } else {
            alert('No puede realizar ese movimiento');
        }
    }

    if (ev.target.id === 'r2') {
        if (data === 'im_muyalto' || data === 'im_alto' || data === 'im_medio' || data === 'im_muybajo' || data === 'im_bajo') {
            var nodeCopy = document.getElementById(data).cloneNode(true);
            nodeCopy.id = "r2";
            ev.target.appendChild(nodeCopy);
            respuestaimp[indice - 1] = data;
        } else {
            alert('No puede realizar ese movimiento');
        }
    }

}


