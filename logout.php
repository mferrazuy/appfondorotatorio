<?php
session_start();
session_destroy();
header('Location: fr-login.php');
?>
