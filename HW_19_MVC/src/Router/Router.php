<?php
namespace Router;

class Router
{
    protected $routes = [];

    public function __construct(){
        $arr = require 'src/Config/route.php';
        foreach ($arr as $key => $value){
            $this->add($key, $value);
        }
    }
    private function add($route, $par)
    {
        return $this->routes[$route] = $par;
    }

    public function match()
    {
        if (!empty($_SERVER['REQUEST_URI'])){
        $uri = trim($_SERVER['REQUEST_URI'],'/');
        }
        foreach ($this->routes as $key => $value){
            $key = '#^'.$key.'$#';
            if (preg_match($key, $uri, $matches)){
                $explode = explode('/', $value);
                $controllerName = ucfirst(array_shift($explode) . 'Controller');
                $actionName = ucfirst(array_shift($explode));
                $actionName = 'action' . $actionName;
                $controllerFile = $_SERVER['DOCUMENT_ROOT'] . '/src/Controllers/' . $controllerName . '.php';
                if (file_exists($controllerFile)){
                    require_once ($controllerFile);
                }
                $controllerObject = new $controllerName;
                $controllerObject -> $actionName();

                return true;
            }
        }
        return false;
    }
    public function run()
    {
        if ($this->match())
        {
            return true;
        }
        else require_once ($_SERVER['DOCUMENT_ROOT'] . '/src/view/errors.php');
        return true;
    }
}

