<?php
// Datos de conexión a la base de datos
$hostname = 'localhost'; // Cambiar a la dirección del servidor MySQL si es necesario
$username = 'fr-user';
$password = 'u53rFiNcONt';
$database = 'fr_fin_contable';

// Crear la conexión
$con = mysqli_connect($hostname, $username, $password, $database);

// Verificar la conexión
if (!$con) {
    die('Error al conectar a la base de datos: ' . mysqli_connect_error());
}
?>
