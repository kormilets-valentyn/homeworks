<?php
use Router\Router;
require_once ($_SERVER['DOCUMENT_ROOT'] . '/vendor/autoload.php');
session_start();
$a = new Router;
$a->run();