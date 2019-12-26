<?php

namespace database;
use PDO;
class Connect {
    private static $instance;
    private function __construct()
    {
    }
    static public function getInstance(){
        if(self::$instance === null)
        {
            $conf = require_once 'dbConnect.php';
            $dsn = 'mysql:host='.$conf['host'] . ';dbname=' . $conf['db'] . ';charset=' . $conf['charset'];
            self::$instance = new PDO($dsn, $conf['user'], $conf['pass']);
        }

        return self::$instance;
    }
    static public function Query($example)
    {
        $stm = Connect::getInstance()->prepare($example);
        $stm->execute();
        $stm->fetch(PDO::FETCH_ASSOC);
        return $stm;
    }

    private function __wakeup(){}
    private function __clone(){}
}

