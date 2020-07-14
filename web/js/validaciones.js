function soloLetras(e) {
    key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toLowerCase();
    letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
    especiales = "8-37-39-46";

    tecla_especial = false
    for (var i in especiales) {
        if (key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }

    if (letras.indexOf(tecla) == -1 && !tecla_especial) {
        return false;
    }
}

function validar() {
    
    var telefono, correo;
    
    telefono = document.getElementById("telefono").value;
    correo = document.getElementById("correo").value;
    
    expresion = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    
    if (telefono === "" || correo === "" ) {
        alert("Todos los campos son obligatorios.");
        return false;
    }else if((telefono.length < 4) || (telefono.length > 20) ){
        alert("Ingrese un número de telefono valido.");
        return false;
    }else if (!expresion.test(correo)) {
        alert("Correo no valido.");
        return false;
    }
}

function validar() {
    
    var telefono, correo;
    
    telefono = document.getElementById("telefono").value;
    correo = document.getElementById("correo").value;
    
    expresion = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    
    if (telefono === "" || correo === "" ) {
        alert("Todos los campos son obligatorios.");
        return false;
    }else if((telefono.length < 4) || (telefono.length > 20) ){
        alert("Ingrese un número de telefono valido.");
        return false;
    }else if (!expresion.test(correo)) {
        alert("Correo no valido.");
        return false;
    }
}



