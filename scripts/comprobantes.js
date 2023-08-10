/**************FUNCIONES AUXILIARES ************************* */
const isNumber = n => (typeof(n) === 'number' || n instanceof Number);

/***************CODIGO ************************************** */
const input_rut = document.querySelector("#numero-rut");
const input_razon_social = document.querySelector("#razon-social");

input_rut.addEventListener('blur', (e) => {
    //if(typeof(input_rut.value)===){
    const numero = input_rut.value;
    if (input_rut.value.trim() !=="") {
        //Construir la URL de obtener
        const url = "../empresa/obtener.php?num_rut=" + numero;
        //realizar una solicitud AJAX al servidor
        const xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                input_razon_social.innerHTML = xhr.responseText
            }
        }
        xhr.open("GET", url, true);
        xhr.send();
        console.log(input_rut.value);
    };
    xhr.open("GET", )
    else {
        console.log("Debe ingresar un numero");
    }
})
console.log (input_rut);