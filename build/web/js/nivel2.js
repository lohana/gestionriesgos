/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var riesgos = [];
var source = ["5%", "10%", "15%", "20%", "25%", "30%", "35%", "40%"];
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

var mitigacion = [
    "Identificar las interfaces con otros sistemas y sugerir considerar los costos dentro del total del proyecto.",
    "Realizar un análisis detallado de la migración de los datos. Presupuestar y asignar recursos a las actividades relacionadas.",
    "Realizar un proceso de validación de los documentos de requerimientos",
    "El mecanismo que se aplica a este riesgo es el mismo del riesgo 1.",
    "Implementar pair programming con TDD en el primer mes de desarrollo.",
    "Revisar el cronograma, los recursos, el tiempo y el alcance del proyecto. Definir las actividades para equilibrar los tres parámetros en caso de que sea necesario.",
    "Seleccionar una técnica de testing (Particiones de Equivalencia) y elaborar los casos de prueba con la técnica seleccionada. En caso de no tener conocimiento de las técnicas contratar una persona con experiencia en pruebas por el tiempo de las pruebas. ",
    "Hacer pares de programación en donde haya una persona con habilidades para programar con TDD, se incluiría en el mecanismo para mitigar el riesgo 11.",
    "Se confía en la seguridad del software de base y en la red en donde va a funcionar el software. Se asume el riesgo",
    "Elaborar los planes de gestión (G. de la Configuración, Gestión de la calidad, G. de proyecto) y de ingeniería de requerimientos. Ajustar las actividades al cronograma del proyecto.",
    "Implementar la gestión de la configuración de acuerdo  a un plan",
    "Entrenar a los desarrolladores en el uso de JUnit y Eclipse."
];
var costo = [2000, 15000, 2000, 0, 20000, 2000, 12000, 0, 0, 3000, 5000, 10000];
var maxslider = 71000;
var nuevomax = maxslider;
var presupuesto = 0;

for (var i = 0; i < 12; i++) {
    riesgos[i] = {des_riesgo: desc_riesgo[i], mitigacion: mitigacion[i], costo: costo[i]};

}
$(document).ready(function () {
    $("#jqGrid").jqGrid({
        datatype: "local",
        data: riesgos,
        height: 250,
        width: 750,
        colModel: [
            {label: 'Descripción del Riesgo', name: 'des_riesgo', width: 150, key: true},
            {label: 'Mecanismo de Mitigación', name: 'mitigacion', width: 150},
            {label: 'Costo', name: 'costo', width: 80, align: 'center', formatter: 'currency',
                formatoptions: {decimalSeparator: '.', decimalPlaces: 1, suffix: ' USD', thousandsSeparator: ',', prefix: '$'}}
        ],
        multiselect: true,
        viewrecords: true,
        caption: "Nivel 2",
        onSelectRow: function (id, selected) {
            var grid = $("#jqGrid");

            if (this.lastSel && id && id !== this.lastSel) {
                $(this).trigger('deselectRow', [this, this.lastSel]);
            } else {
                var seleccion = 13;
                for (var i = 0; i < 12; i++) {
                    if (id === desc_riesgo[i])
                    {
                        seleccion = i;
                        i = 12;
                    }
                }
                if (selected === false) {
                    presupuesto = presupuesto - costo[seleccion];
                    slider.slider("option", "values", [0, presupuesto]).slider("pips", "refresh");
                } else {
                    presupuesto = presupuesto + costo[seleccion];
                    if (presupuesto < nuevomax) {
                        slider.slider("option", "values", [0, presupuesto]).slider("pips", "refresh");
                    } else {
                        alert('Ha pasado el presupuesto');
                        presupuesto = presupuesto - costo[seleccion];
                        grid.setSelection(id, false);
                    }
                }
                document.getElementById("pres").innerHTML = '<b><i>Costo total:$' + presupuesto + '.00</i></b>';

            }
        }
    });

    var slider = $(".slider")
            .slider({
                min: 0,
                max: 71000,
                step: 10,
                range: true
            })
            .slider("pips", {
                rest: "pips",
                prefix: "$",
                suffix: ".00"
            })
            .on("slide", function (event, ui) {
                return false;
            });


    $("#jqxWidget").jqxDropDownList({source: source, selectedIndex: 0, width: '200', height: '25'});
    $('#jqxWidget').on('select', function (event) {
        var args = event.args;
        var item = $('#jqxWidget').jqxDropDownList('getItem', args.index);
        if (item !== null) {
            slider.slider("option", "range", true)
                    .slider("option", "min", 0)
                    .slider("option", "values", [0, 0])
                    .slider("option", "step", 10)
                    .slider("pips", "refresh");
            presupuesto = 0;
            document.getElementById("pres").innerHTML = '<b><i>Costo total:$' + presupuesto + '.00</i></b>';
            $("#jqGrid").jqGrid('resetSelection');

            if (item.label === '5%') {
                nuevomax = (maxslider * 0.05);
                slider.slider("option", "max", nuevomax).slider("pips", "refresh");
            }
            if (item.label === '10%') {
                nuevomax = (maxslider * 0.10);
                slider.slider("option", "max", nuevomax).slider("pips", "refresh");
            }
            if (item.label === '15%') {
                nuevomax = (maxslider * 0.15);
                slider.slider("option", "max", nuevomax).slider("pips", "refresh");
            }
            if (item.label === '20%') {
                nuevomax = (maxslider * 0.20);
                slider.slider("option", "max", nuevomax).slider("pips", "refresh");
            }
            if (item.label === '25%') {
                nuevomax = (maxslider * 0.25);
                slider.slider("option", "max", nuevomax).slider("pips", "refresh");
            }
            if (item.label === '30%') {
                nuevomax = (maxslider * 0.30);
                slider.slider("option", "max", nuevomax).slider("pips", "refresh");
            }
            if (item.label === '35%') {
                nuevomax = (maxslider * 0.35);
                slider.slider("option", "max", nuevomax).slider("pips", "refresh");
            }
            if (item.label === '40%') {
                nuevomax = (maxslider * 0.40);
                slider.slider("option", "max", nuevomax).slider("pips", "refresh");
            }

        }
    });
    $('#jqxWidget').on('unselect', function (event) {
        var args = event.args;
        var item = $('#jqxWidget').jqxDropDownList('getItem', args.index);
        if (item !== null) {
        }
    });
});



function getSelectedRows() {
    var grid = $("#jqGrid");
    var rowKey = grid.getGridParam("selrow");

    if (!rowKey)
        alert("No rows are selected");
    else {
        var selectedIDs = grid.getGridParam("selarrrow");
        var result = "";
        for (var i = 0; i < selectedIDs.length; i++) {
            result += selectedIDs[i] + ",";
        }

        alert('Ha mitigado: ' + selectedIDs.length + ' riesgos'
                + '\n Costo total: ' + presupuesto);
        // return selectedIDs;
    }
}


