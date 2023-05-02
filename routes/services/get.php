<?php

//print_r( $routesArray[$cantidad_de_partes_URL+1] ); return;

require_once "controllers/get.controller.php";

$table = $routesArray[$cantidad_de_partes_URL+1];

$table = explode("?", $routesArray[$cantidad_de_partes_URL+1]);

$table = $table[0];


$select = $_GET["select"] ?? "*";  //https://youtu.be/oMXe5SrkW8g?list=PLEbpWR0TUWTYj-822YDewMS0188i2e4O2&t=451

$response = new GetController();

$response -> getData($table , $select);
//$response = GetController::getData($table);

