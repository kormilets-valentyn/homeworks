<?php

namespace database;
use PDO;
use PDOException;
class Connect {
    private static $instance;
    private $conn;
    private function __construct()
    {
        try {
            $conf = require_once 'dbConnect.php';
            $dsn = 'mysql:host=' . $conf['host'] . ';dbname=' . $conf['db'] . ';charset=' . $conf['charset'];
            $this->conn =  new PDO($dsn, $conf['user'], $conf['pass']);

        }
        catch (PDOException $e){
        echo 'Подключение не удалось: ' . $e->getMessage();
    }
    }
    static public function getInstance(){
        if(self::$instance === null)
        {
            self::$instance = new self();
        }

        return self::$instance;
    }
    public function Query($example)
    {
        $stm = $this->conn->prepare($example);
        $stm->execute();
        $result = $stm->fetchAll(PDO::FETCH_ASSOC);
        return $result;
    }
//    public function getConnection()
//    {
//        return $this->conn;
//    }
    private function __wakeup(){}
    private function __clone(){}
}

