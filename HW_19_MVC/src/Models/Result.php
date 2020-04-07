<?php
namespace Models;

 class Result{
     public static function getMessage()
     {
         $a = new Connect();
         $row = $a->query('SELECT title FROM sparrow WHERE id=1');
         print_r($row);
     }
}
