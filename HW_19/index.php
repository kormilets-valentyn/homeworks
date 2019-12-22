<?php
use src\router\Router;
require 'autoloader.php';
include_once ($_SERVER['DOCUMENT_ROOT'] . '/src/models/Result.php');
session_start();
$a = new Router;
$a->run();