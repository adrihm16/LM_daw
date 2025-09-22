function calcular(operacion) {
    let operando1 = parseFloat(document.getElementById("operando1").value);
    let operando2 = parseFloat(document.getElementById("operando2").value);
    let resultado = 0;
    let devuelto = document.getElementById("resultadoImpreso");
    console.log(operando1);
    console.log(operando2);
    if (isNaN(operando1)) {
        operando1 = 0;
    }
    if (isNaN(operando2)) {
        operando2 = 0;
    }
    switch (operacion) {
        case "+":
        resultado = operando1 + operando2;
            break;
        case "-":
        resultado = operando1 - operando2;
            break;
        case "x":
        resultado = operando1 * operando2;
            break;
        case ":":
        if (operando2 == 0) {
            resultado = "Syntax error";
            break;
        }
        resultado = operando1 / operando2;
            break;
    }
    devuelto.value = resultado; 
}
function borrar() {
    let operando1 = document.getElementById("operando1");
    let operando2 = document.getElementById("operando2");
    let devuelto = document.getElementById("resultadoImpreso");
    operando1.value = null;
    operando2.value = null;
    devuelto.value = null;
}