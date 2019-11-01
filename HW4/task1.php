<?php
$mass = [200, 5, 200, 7, 1, 190, 4500, 100, 6, 18, 5, 32, 180, 3, 352];

function arrayMax($array){
    $max = $array[0];
    foreach ($array as $value){
        if ($max < $value){
            $max = $value;
        }
    }
    return $max;
}
$a = arrayMax($mass);
print_r($a);

$string_array = [
    '1234567890fdgds',
    'abc 123 abc slkdjhg',
    'abcdefghijklmnopqjhvkhvkjhvhj',
    'sos.sossdjfbdskjb  gfdsjl fdbdfb     fbgsldn43545%sg',
    '12345',
    'sd12fdgjjhjhdghdgsh67 5   34673467 34 '
];

function arrayString($arr){
    $result = '';
    $maxi = 0;
    foreach ($arr as $value) {
        $length = strlen($value);
            if ($length > $maxi){
                $maxi = $length;
                $result = $value;
            }
    }
return $result;
}
$a = arrayString($string_array);
echo "\n" . ($a);
