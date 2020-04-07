<?php

namespace controllers;

class HomeController
{
    public function __construct()
    {

    }

    protected function loadModel($model, $alias)
    {
       $class = "\models\\" . $model;
       $this->{$alias} = new $class();
    }

    protected function display($view){
        require_once($_SERVER["DOCUMENT_ROOT"] . "/views/" . $view . ".php");
    }

    protected function data($alias, $value){
        $this->{$alias} = $value;
    }
}