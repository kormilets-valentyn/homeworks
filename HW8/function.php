<?php
$name = $_POST['name'];
$mail = $_POST['mail'];
$os = $_POST['radio'];
echo "Привет " .  $name . ", твой e-mail " . $mail . "<br/>";
echo "Ты любишь работать на $os" . "<br/>";
$fizz = $_POST['fizz'];
$buzz = $_POST['buzz'];
$num = $_POST['num'];
fizzbuzz($fizz, $buzz, $num);
function fizzbuzz ($f, $b, $n){
    for ($i = 1; $i <= $n; $i++){
        if (($i % $f == 0) && ($i % $b == 0)){
            echo "FB ";
        }
        elseif ($i % $b == 0){
            echo "B ";
        }
        elseif ($i % $f == 0){
            echo 'F ';
        }
        else echo $i . " ";
    }
    return true;
}