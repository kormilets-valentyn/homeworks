<?php
define ("SIZE", 100);
$array = [];
$arr = 0;
for ($i = 2;; $i++) {
    $mark = true;
    for ($j = 2; $j <= $i / 2; $j++) {
        if ($i % $j == 0) {
            $mark = false;
        }
    }
    if ($mark) {
        $array[] = $i;
        $arr ++;
    }
    if ($arr == SIZE){
        break;
    }
}
echo array_sum($array) . PHP_EOL;
