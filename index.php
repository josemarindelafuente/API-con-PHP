<?php

/*=========================================
MOSTRAR ERRORES
===========================================*/
ini_set('display_errors', 1);
ini_set('log_errors', 1);
ini_set('error_log', 'C:/laragon/www/api-con-php/version1/php_error_log');

/*=========================================
REQUERIMIENTOS
===========================================*/

//require_once "models/connection.php";
//Connection::infoDatabase();/

require_once "controllers/routes.controller.php";

$index = new RoutesController();
$index -> index();

