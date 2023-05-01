<?php

//print_r( $routesArray[$cantidad_de_partes_URL+1] ); return;

require_once "controllers/get.controller.php";

$table = $routesArray[$cantidad_de_partes_URL+1];

$response = new GetController();
$response -> getData($table);
//$response = GetController::getData($table);

