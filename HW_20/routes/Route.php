<?php

namespace routes;

use \configs\Config;

class Route
{
    private static $instance;

    private function __construct()
    {
    }

    public function getInstance(){
        if(self::$instance === null){
            self::$instance = new Route();
        }

        return self::$instance;
    }

    public function routing(){
        $routes = Config::getRoutes();
        for($i = 0, $count = count($routes); $i < $count; $i++)
        {
            if($_SERVER["REQUEST_METHOD"] === $routes[$i]["method"]
                && $_SERVER["REQUEST_URI"] === $routes[$i]["uri"])
            {
                $controllerName = new $routes[$i]["controller"];
                $action = $routes[$i]["action"];
                $controllerName->$action();
                break;
            }
        }
    }

    private function __clone()
    {

    }

    private function __wakeup()
    {

    }
}