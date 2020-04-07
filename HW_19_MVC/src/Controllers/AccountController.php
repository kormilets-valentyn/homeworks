<?php
use Models\Result;
class AccountController
{
    public function actionLogin()
    {
        $message = Result::getMessage();
        print_r ($message);
        return true;
    }
}