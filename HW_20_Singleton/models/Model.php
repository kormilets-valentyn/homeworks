<?php

namespace models;

use \database\Connect;
abstract class Model
{
    private $db;

    public function __construct()
    {
        $this->db = Connect::getInstance();
    }

//    public function sql($sql, $prepared=[]){
//        for($i = 0, $count = count($prepared); $i < $count; $i++){
//            $value = $this->db->realEscape($prepared[$i]["value"]);
//            $sql = str_replace($prepared[$i]["statement"], $value, $sql);
//        }
//
//        return $this->db->query($sql);
//    }

    public function getList(){
        return "lslsls";
    }

    abstract protected function tableName();
}