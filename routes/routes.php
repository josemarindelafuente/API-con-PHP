<?php
// estoy lo usao porque el script no esta en la raiz. estan 2 carpetas dendro de www del server
$cantidad_de_partes_URL = 2;

$routesArray = explode("/", $_SERVER['REQUEST_URI'] );
$routesArray = array_filter($routesArray);

//print_r($routesArray);return;

// el igual a 2 es porque en la url estoy dentro de 2 carpetas en el server http://localhost/api-con-php/version1/
// CUANDO NO SE HACE UNA PETICION A LA API
if ( count($routesArray) == $cantidad_de_partes_URL) {
    //echo "vacio";
    $json = array(
        "status" => 404,
        "result" => "Not Found"
        );
        echo json_encode($json, http_response_code($json['status']) ) ;
        return;
    
} else {


   // SI LA PETICION TIENE 3 PARTES, ENTONCES TIENE UN PARAMETRO PARA CONSULTAR
   // TAMBIEN VERIFICO QUE VENGA POR MEDIO DE ALGUNOS DE LOS METODOS REQUEST
    if ( count($routesArray) == ($cantidad_de_partes_URL +1 ) && isset( $_SERVER['REQUEST_METHOD']) ) {

        if ($_SERVER['REQUEST_METHOD']=='GET'){
            
            include "services/get.php";

        }


        if ($_SERVER['REQUEST_METHOD']=='POST'){
            $json = array(
                "status" => 200,
                "result" => "Solititud POST"
                );
                echo json_encode($json, http_response_code($json['status']) ) ;
        }
        if ($_SERVER['REQUEST_METHOD']=='PUT'){
            $json = array(
                "status" => 200,
                "result" => "Solititud PUT"
                );
                echo json_encode($json, http_response_code($json['status']) ) ;
        }
        if ($_SERVER['REQUEST_METHOD']=='DELETE'){
            $json = array(
                "status" => 200,
                "result" => "Solititud DELETE"
                );
                echo json_encode($json, http_response_code($json['status']) ) ;
        }
    }


}


//CONTINUAR EN EL VIDEO 11 DEL TUTORIAL
//https://www.youtube.com/watch?v=-UW_x-3mwkU&list=PLEbpWR0TUWTYj-822YDewMS0188i2e4O2&index=7