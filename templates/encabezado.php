<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Iniciar sesión</title>
  <link rel="stylesheet" href="styles/styles.css">
</head>
<body>
  <main>
<?php include 'includes/variables.php' ?>
<?php
    session_start();
    if (isset($_SESSION['user_id'])) {
      echo 'Bienvenido al tablero, ' . $_SESSION['user_nicename'] . '!';
    } else {
      header('Location: fr-login.php');
    }
    ?>
    <header id="header">
        <h2>
          <img src="http://localhost/appfondorotatorio/images/logo-dpto-com-inf.png" />
          <span>Rendición de fondos rotatorios</span>
        </h2>
        <nav id="nav-principal">
            <ul>
                <li><a href="#">Comprobantes</a></li>

                <li><a href="#">Empresas</a></li>
                <li><a href="#">Unidades</a></li>
                <li><a href="#">Listados</a></li>
                <li><a href="#">Usuario</a>
            </ul> 
            <ul id="comprobantes-menu">
              <li><a href="#">Agregar</a></li>
              <li><a href="#">Modificar</a></li>
              <li><a href="#">Eliminar</a></li>
            </ul>
            <ul id="empresas-menu">
              <li><a href="#">Agregar</a></li>
              <li><a href="#">Modificar</a></li>
              <li><a href="#">Eliminar</a></li>
            </ul>
            <ul id="unidades-menu">
              <li><a href="#">Ingreso</a></li>
              <li><a href="#">Modificar</a></li>
              <li><a href="#">Eliminar</a></li>
            </ul>
            <ul id="usuario-menu">
              <li><a href="#">Agregar</a></li>
              <li><a href="#">Modificar datos personales</a></li>
              <li><a href="#">Cerrar sesión</a></li>
            </ul>
        </nav>
    </header>