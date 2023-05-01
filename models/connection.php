<?php

class Connection {


    /*=========================================
    INFO DE LA BASE DE DATOS
    ===========================================*/
    static public function infoDatabase(){
        $infoDB = array(
            "database" => "api-con-php_version1",
            "user" => "root",
            "pass" => ""
        );
        return $infoDB;
    }

    /*=========================================
    CONEXION A LA BASE DE DATOS
    ===========================================*/
    static public function connect(){

        try {

            $link = new PDO(
                "mysql:host=localhost;dbname=".Connection::infoDatabase()['database'],
                Connection::infoDatabase()["user"],
                Connection::infoDatabase()["pass"]
            );

            $link->exec('set names utf8');

        } catch(PDOException $e) {
            die( "Erro: ". $e->GetMessage() );
        }

        return $link;
    }



}