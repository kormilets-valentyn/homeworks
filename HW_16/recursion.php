<?php
$a = [1,1,1,2,2,3];
function summ($x, $index=0){
    if (count($x) === $index+1){
        if ($x[$index] % 2 !== 0){
            return 0;
        }
        else return $x[$index];
    }
    if ($x[$index]%2 !== 0){
        return summ($x, ++$index);
    }
    return $x[$index]+ summ($x, ++$index);
}
echo "Сумма всех чисел массива, кратных двум = " . summ($a);
if (summ($a) == 0) {
    echo "There is no such numbers";
}
