function validar() {
    
    var fecha, telefono, correo;
    fecha = document.getElementById("fecha").value;
    telefono = document.getElementById("telefono").value;
    correo = document.getElementById("correo").value;
    
    expresion = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    
    if (fecha === "" || telefono === "" || correo === "" ) {
        alert("Todos los campos son obligatorios.");
        return false;
    }else if((telefono.length < 4) || (telefono.length > 20) ){
        alert("Ingrese un número de telefono valido.");
        return false;
    }else if (!expresion.test(correo)) {
        alert("Correo no valido.");
        return false;
    }else if(!existeFecha(fecha)){
        alert("fecha no valida.");
        return false;
    } 
}


/*function existeFecha(fecha) {
    
    var fechaf = fecha.split("/");
    var dia = fechaf[0];
    var mes = fechaf[1];
    var anio = fechaf[2];
    var date = new Date(anio, mes, '0');
    if ((dia - 0) > (date.getDate() - 0)) {
        alert("El valor del día debe estar comprendido entre 1 y 31.");
        return false;
    } else if (dia < 1 || dia > 31) {
        alert("El valor del día debe estar comprendido entre 1 y 31.");
        return false;
    } else if (mes < 1 || mes > 12) {
        alert("El valor del mes debe estar comprendido entre 1 y 12.");
        return false;
    } else if ((mes == 4 || mes == 6 || mes == 9 || mes == 11) && dia == 31) {
        alert("El mes " + mes + " no tiene 31 días!");
        return false;
    } else if (mes == 2) { // bisiesto
        var bisiesto = (anio % 4 == 0 && (anio % 100 != 0 || anio % 400 == 0));
        if (dia > 29 || (dia == 29 && !bisiesto)) {
            alert("Febrero del " + anio + " no contiene " + dia + " dias!");
            return false;
        }
    } else if(anio < 0 || anio > 2019){
        alert("Año no valido");
        return false;
    } else {
        return true;
    }

}*/

