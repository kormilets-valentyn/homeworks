<?php
namespace src\router;
require_once $_SERVER['DOCUMENT_ROOT'] . '/autoloader.php';
class Router
{
    protected $routes = [];

    public function __construct(){
        $arr = require 'src/config/route.php';
        foreach ($arr as $key => $value){
            $this->add($key, $value);
        }
    }
    private function add($route, $par)
    {
        return $this->routes[$route] = $par;
//        var_dump ($route);
//        var_dump ($par);

    }

    public function match()
    {
        if (!empty($_SERVER['REQUEST_URI'])){
        $uri = trim($_SERVER['REQUEST_URI'],'/');
//        echo $uri;
        }
        foreach ($this->routes as $key => $value){
            $key = '#^'.$key.'$#';
            if (preg_match($key, $uri, $matches)){
                $explode = explode('/', $value);
                $controllerName = ucfirst(array_shift($explode) . 'Controller');
                $actionName = ucfirst(array_shift($explode));
                $actionName = 'action' . $actionName;
//                echo $controllerName;
//                echo '<br/>';
//                echo $actionName;
                $controllerFile = $_SERVER['DOCUMENT_ROOT'] . '/src/controllers/' . $controllerName . '.php';
//                echo $controllerFile;

                if (file_exists($controllerFile)){
                    require_once ($controllerFile);
                }
                else echo "File not found";
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
        else echo "This page is unavailable!";
    }
}

