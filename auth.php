<?php
session_start();
require 'db.php'; // Conexión a la base de datos

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['user_login'];
    $password = $_POST['user_pass'];
    
    $sql = "SELECT * FROM `fr_users` WHERE `user_email` = '$email'";
    //echo 'la sql'.$sql;
    $result = mysqli_query($con, $sql);
    //echo $result;
    
    if ($result && mysqli_num_rows($result) > 0) {
        $user = mysqli_fetch_assoc($result);
        
        if (password_verify($password, $user['user_pass'])) {
            // Autenticación exitosa
            $_SESSION['user_id'] = $user['ID'];
            $_SESSION['user_nicename'] = $user['user_nicename'];
            header('Location: escritorio.php'); // Página de inicio tras iniciar sesión
        } else {
            // Contraseña incorrecta
            //header('Location: login.php?error=1');
            echo 'paso algo malo';
        }
    } else {
        // Usuario no encontrado
        header('Location: login.php?error=1');
    }
}
?>
