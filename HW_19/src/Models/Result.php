<?php
namespace Models;

 class Result{
     public static function getMessage()
     {
         $a = new Connect();
         $row = $a->query('SELECT title FROM sparrow where id=1');
         $result = '';
         foreach ($row as $value){
             foreach ($value as $item){
                 $result .= $item;
             }
         }
         return $result;
     }
}
