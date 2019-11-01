<?php
function eratosfen($n){
    $s = [];
    $s[1] = 0;
    for ($k = 2; $k <= $n; $k++){
        $s[$k] = 1;
    }
    for ($k= 2; $k<= $n / 2; $k++){
        if ($s[$k] == 1){
            for ($j = $k*$k; $j <=$n; $j+=$k){
                $s[$j] = 0;
            }
        }
    }
    return $s;
}
$array = (eratosfen(2000000));
$sum = 0;
foreach ($array as $key => $value){
    if ($value == 1){
        $sum += $key;
    }
}
//print_r ($array);
echo "Сумма первых " . array_sum($array) . " простых чисел" . " = " . $sum;