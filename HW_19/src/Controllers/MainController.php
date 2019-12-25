<?php

class MainController
{
    public function actionIndex()
    {
        require_once $_SERVER['DOCUMENT_ROOT'] . '/src/view/index.php';
        return true;
    }
}