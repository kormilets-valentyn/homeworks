<?php
//$closure = function($name){
//    return "Hello $name \n";
//    };
//echo $closure('John'); //__invoke()
//echo get_class($closure);

function fizzBuzz ($str){
    $numbers = explode(" ", $str);
    $fizz = $numbers[0];
    $buzz = $numbers[1];
    $num = $numbers[2];
    $output = '';
    for ($i = 1; $i <= $num; $i++) {
        if ($i % $fizz == 0) {
            $output .= "F";
        }
        if ($i % $buzz == 0) {
            $output .= "B";
        }
        if ($i % $fizz !=0 && $i % $buzz != 0) {
            $output .= $i;
        }
        $output .= " ";
    }
return $output;
}
function working($file1, $file2){
    $arr = file($file1);
    $write = fopen($file2, 'w');
    $result = array_map('fizzBuzz', $arr);
    fwrite($write, implode("\n", $result));
    return true;
}
working('file1.txt', 'file2.txt');

