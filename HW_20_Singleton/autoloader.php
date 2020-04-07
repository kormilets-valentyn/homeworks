<?php

spl_autoload_register('autoloader');

function autoloader($className){
    include($_SERVER["DOCUMENT_ROOT"] . "/" .
        str_replace("\\", "/", $className) . ".php");
}