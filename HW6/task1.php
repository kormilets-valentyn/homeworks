<?php
//КУРЬЕР
$x = 112;
$count_flat = 4;
$count_floor = 9;
$sum_count =($count_flat*$count_floor);
$num = intval ($x/$sum_count);
    if($x%$sum_count != 0){
        $num++;
    }
$except = $num - 1;//количесвто подьездов которое надо отбросить
$x = $x - ($except*$sum_count);
$x = ceil($x/$count_flat);
    echo "Подьезд номер: $num, этаж номер: $x" . PHP_EOL;


//БРИЛЛИАНГ
$handle = fopen("php://stdin","r");
$x = fgets($handle);
brilliant($x);
function brilliant ($x){
    if ($x % 2 == 0 || $x <= 0){
        echo "Число не прошло проверку" . PHP_EOL;
    return false;
    }
    for ($i=1; $i <= $x; $i += 2){
        $probel = ($x - $i) / 2;
            echo str_repeat(" ", $probel). str_repeat("*", $i).str_repeat(" ", $probel).PHP_EOL;
    }
    for ($i=$x - 2; $i >= 0; $i -=2){
        $probel_back = ($x - $i) / 2;
            echo str_repeat(" ", $probel_back). str_repeat("*", $i).str_repeat(" ", $probel_back).PHP_EOL;
    }
    return true;
}

//Файл-тест
function file_test($x){
    $open = fopen($x, 'r+');
    while(!feof($open)) {
        $str = fgets($open);                             //перебираем строки файла
        $trim = trim($str);                              //обрезали пробелы по краям
        $sum = explode(";", "$trim");    //разделили строки по ;
        $sum2 = explode(" ", $sum[0]);          //разделили часть строк до ; по пробелу
        $sum3 = explode(" ", $sum[1]);          //разделили часть строк после ; по пробелу
        $summa = array_sum($sum2);                       //посчитали сумму чисел до ;
        $count = count($sum2);                           //для удобства и понимания посчитали количество чисел до ;
        $res = $summa % $count;                          //нашли остаток от деления
        $test = intdiv($summa, $count);                  //целочисленное деление
        echo ($res == $sum3[1] && $test == $sum3[0]) ? $trim . " True" . PHP_EOL : $trim . " False" . PHP_EOL;
        //сравнием полученный результат c исходным
    }
    return true;
}
file_test('file1.txt');
/*Файл должен иметь следующий вид:
2 4 5;3 2
3 2 1;2 0
6 5 2 1 2;3 1
3 4 5 7 1 2;3 5
*/

// ПАЛИНДРОМ
function prime($x){
    for ($i = 2; $i <= $x; $i++) {
        $result = true;
        for ($j = 2; $j <= $i / 2; $j++) {
            if ($i % $j == 0) {
                $result = false;
            }
        }
    }
    return $result;
}
function palindrom($enter){
for ($i = 1;$i <= $enter; $i++){
    if(prime($i)) {
        $i = (string)$i;
        if ($i == strrev($i)) {
            echo $i . PHP_EOL;
        }
    }
}
    return true;
}
//palindrom(1000);

//Массив случайных чисел
$arr = [];
while (count($arr) < 10) {
    for ($i = 1; $i <= 10; $i++) {
        $r = rand(10, 20);
            if (!in_array($r, $arr)) {
                $arr[$i] = $r;
            }
    }
}
ksort ($arr);
print_r ($arr);