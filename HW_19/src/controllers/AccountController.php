<?php
include_once ($_SERVER['DOCUMENT_ROOT'] . '/src/models/Result.php');
class AccountController
{
    public function actionLogin()
    {
        $message = Result::getMessage();
        echo $message;
        return true;
    }
}