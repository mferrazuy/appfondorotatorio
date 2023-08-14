/***************CODIGO ************************************** */
const input_unidad = document.querySelector("#unidad-ejercito");
const label_unidades = document.querySelector("#unida-nombre");

//const input_razon_social = document.querySelector("#razon-social");
console.log(input_unidad);

input_unidad.addEventListener('input', (evt) => {
    //if(typeof(input_rut.value)===){
    let nombre="";
    if (input_unidad.value.length >= 2) {
        nombre = evt.target.value;
        console.log(nombre);
        //Construir la URL de obtener
        const url = "../appfondorotatorio/unidades/obtener.php?unidad=" + nombre;
        //realizar una solicitud AJAX al servidor
        const xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                const registros = JSON.parse(xhr.responseText);
                mostrarResgistros(registros);
                /*if(xhr.responseText=="Registro no encontrado."){
                    alert("No hay ninguna empresa con ese nombre");
                }else {
                    label_unidades.textContent = xhr.responseText;
                }*/
                //console.log(xhr.responseText);
            }
        }
        xhr.open("GET", url, true);
        xhr.send();
        //console.log(input_rut.value);
    }  
})
//console.log (input_rut);
    // Función para mostrar los registros en la página
    function mostrarRegistros(registros) {
        resultadoDiv.innerHTML = ""; // Limpiar el contenido anterior
        registros.forEach(registro => {
            resultadoDiv.innerHTML += "Nombre: " + registro.nombre + "<br>";
            resultadoDiv.innerHTML += "Apellido: " + registro.apellido + "<br>";
            // Agregar más campos aquí
            resultadoDiv.innerHTML += "<hr>"; // Separador entre registros
        });
    }