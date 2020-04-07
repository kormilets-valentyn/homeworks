<?php
function file_array ($x){
    $file_array = file($x, FILE_IGNORE_NEW_LINES);
    return $file_array;
}
function string_length($y){
    $lengths = [];
    foreach ($y as $value){
        $lengths[] = strlen(trim($value));
    }
    return $lengths;
}
function write_file_array($pathToFile, $read, $leng){
    $middle = array_sum($leng) / count($leng);
    $write_array = [];
    foreach ($leng as $i => $value){
        if ($value > $middle){
            $write_array[] = $read[$i];
        }
    }
    file_put_contents($pathToFile, implode(PHP_EOL, $write_array));
    return true;
}
$readed = file_array("file1.txt");
$length_array = string_length($readed);
write_file_array ('file2.txt', $readed, $length_array);
?>