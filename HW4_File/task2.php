<?php
$newArray = [
    'abcabcaaa',
    'qwqwqwqq',
    '12345671234567',
    'bvbvcvcv',
    '456666654',
];
function myCount ($arr){
    foreach ($arr as $key => $value){
        foreach (count_chars($value, 1) as $i => $val){
            echo "\"" .  chr($i) ."\"" . ' встречается в строке' . ($key+1) . ' ' . $val . 'раз(а)' . "\n";
        }

    }
    return true;
}
myCount($newArray);
?>