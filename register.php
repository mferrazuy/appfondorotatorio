<?php
require 'db.php'; // Conexión a la base de datos

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    //$name = $_POST['name'];
    $email = $_POST['user_login'];
    $password = $_POST['user_pass'];
    
    // Hash de la contraseña
    $hashedPassword = password_hash($password, PASSWORD_BCRYPT);
    
    $sql = "INSERT INTO `fr_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_display`, `user_status`, `user_other`)
     VALUES ('', '$email', '$hashedPassword', 'nice', '$email', 'display', 'true', '1')";
    $result = mysqli_query($con, $sql);
    echo $sql;
    if ($result) {
        //header('Location: fr-login.php');
        
    } else {
        echo 'Error al registrar el usuario.';
    }
}
?>
