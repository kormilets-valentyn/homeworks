<?php
namespace Models;
use PDO;
class Connect
{
    private $link;
    public function __construct()
    {
        $this->connect();
    }
    private function connect()
    {
        $conf = require_once 'dbConnect.php';
        $dsn = 'mysql:host='.$conf['host'] . ';dbname=' . $conf['db'] . ';charset=' . $conf['charset'];
        $this->link = new PDO($dsn, $conf['user'], $conf['pass']);
        return $this;
    }
    public function execute($sql)
    {
        $exe = $this->link->prepare($sql);
        return $exe->execute();
    }
    public function query($sql)
    {
        $query = $this->link->prepare($sql);
        $query->execute();
        $result = $query->fetchAll(PDO::FETCH_ASSOC);
        if ($result === false){
            return $result = [];
        }
        else return $result;
    }
}