<?php
$array1 = [
    'first string',
    'second string',
    'third string1234',
    'fourth string125145',
    'one more string'
];
$array2 = [
    'abrakadabra',
    'qwertyuioppnjsdfbv',
    '1221386342hf',
    '847hewrhg',
    'rth string1',
    'rth string1sdlkfnsdgn',
    'dsjfhlj'
];
function array_length($one, $two){
    $a = [];                                //создали пустой массив
    $b = [];                                //аналогично
    foreach ($one as $value){
        $length1 = strlen($value);
        $a[] = $length1;                    //записали в новый массив длины строк
    }
    foreach ($two as $value){
        $length2 = strlen($value);
        $b[] = $length2;                    //записали в новый массив длины строк
    }
    print_r ($a);
    print_r ($b);
    $test_array = [];
    foreach ($a as $key => $value){
        if (isset($b[$key])){                                       //проверяем условие наличия элемента массива по ключу
            $test_array[] = abs($a[$key] - $b[$key]);       //если да-то записываем разницу длины строки по модулю
        }
    }
    print_r($test_array);
    $result = max($test_array);
        echo "Максимальная разница длин элементов массива = " . $result . PHP_EOL;
    return true;
}
array_length($array1, $array2);