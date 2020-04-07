<?php
function fizz_buzz ($fizz, $buzz, $num){
    $result = [];
    for ($i = 1; $i <= $num; $i++){
        if (($i % $fizz == 0) && ($i % $buzz == 0)){
            $result[] = "FB ";
        }
        elseif ($i % $buzz == 0){
            $result[] = "B ";
        }
        elseif ($i % $fizz == 0){
            $result[] = "F ";
        }
        else $result[] = $i . " ";
    }
    return $result;
}
function read_write($file1, $file2){
    $open = fopen($file1, 'r+');
    $write = fopen($file2,'w');
    while (!feof($open)) {
        $read = fgets($open);
        list($f, $b, $n) = explode(' ', $read);
        $fb = fizz_buzz($f, $b, $n);
        fwrite ($write, implode('', $fb)."\n");
    }
    fclose($open);
    fclose($write);
    return true;
}
read_write('file1.txt', 'file2.txt');
?>