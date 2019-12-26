<?php
$start = microtime(true);
require ("autoloader.php");

$routing = \routes\Route::getInstance();
$routing->routing();
$time = microtime(true) - $start;
echo $time;