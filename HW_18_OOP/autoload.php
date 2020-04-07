<?php
spl_autoload_register('autoloader');
function autoloader($class) {
    include $class . '.php';
}
