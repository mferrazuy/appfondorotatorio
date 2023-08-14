<?php
    define("PROJECT_ROOT_PATH", __DIR__ . "/../");
    // include main configuration file
    require_once PROJECT_ROOT_PATH . "/includes/configuracion.php";
    // include the base controller file
    //require_once PROJECT_ROOT_PATH . "/Controller/Api/BaseController.php";
    // include the use model file
    //require_once PROJECT_ROOT_PATH . "/Model/UserModel.php";

    echo PROJECT_ROOT_PATH;

    echo DB_USERNAME;

?>
