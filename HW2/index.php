<!DOCTYPE html>
<html lang="en">
<body>
<form action="" method="POST">
    Введи свою среднюю скорость на дороге:    <input type="number" name="speed" placeholder="Скорость" required>
    <input type="submit" name="submit" value="Проверить">
</form>
<br>
<?php
$speed = $_POST['speed'];
if (!is_null($speed)){
    if (($speed > 0) && ($speed <= 60)){
        echo "Молодец! Ты соблюдаешь ПДД";
    } elseif (($speed > 60) && ($speed <= 90)){
        echo "Ты уверен что ты вне населенного пункта???";
    } else echo "Ты грубый нарушитель ПДД!!!";
}
?>
<form action="" method="POST">
    <br>
    Введите оценку <input type="text" name="mark" placeholder="Оценка" required>
    <input type="submit" name="submit" value="Проверить">
</form>
<br>
<?php
$mark = $_POST['mark'];
    if($mark == 2){
        echo "I am better!!";
    } elseif ($mark == 3) {
        echo "OK :(";
    } elseif ($mark == 4) {
        echo "I am good :)";
    } elseif ($mark == 5) {
        echo "YeeeeWhaaaa!!!!";
    }
?>
<form action="" method="POST">
    <br>
    Введите номер <input type="text" name="number" placeholder="Номер" required>
    <input type="submit" name="submit" value="Проверить">
</form>
<br>
<?php
$number= $_POST['number'];
    switch (true) {
        case ($number <= 10):
            echo "WHAAAAT????";
            break;
        case (($number > 10) && ($number < 100)):
            echo "OK :(";
            break;
        case (($number > 100) && ($number < 1000)):
            echo "Thanks, man!";
            break;
        case ($number > 1000):
            echo "!!!!WOOOOWWWW!!!";
            break;
        case ($number == 100):
            echo "WHAAAAT????";
            break;
        case ($number == 1000):
            echo "WHAAAAT????";
            break;
    }
?>
<br>
<?php
$temp = 101;
    echo ($temp <= 100) ? "Нужно еще подождать" : "Вода закипела!";
?>
<br>
<form action="" method="POST">
    Введите Fizz:    <input type="text" name="fizz" placeholder="fizz" required><br>
    Введите Buzz:    <input type="text" name="buzz" placeholder="buzz" required><br>
    Введите Num:    <input type="text" name="num" placeholder="num" required><br>
    <input type="submit" name="submit" value="Проверить"><br>
</form>
<?php
$fizz = $_POST['fizz'];
$buzz = $_POST['buzz'];
$num = $_POST['num'];
echo 'Вы ввели: ' . $fizz . ' ' . $buzz . ' ' . $num . "<br/>";
for ($i = 1; $i <= $num; $i++){
    if (($i % $fizz == 0) && ($i % $buzz == 0)){
        echo "FB ";
        }
        elseif ($i % $buzz == 0){
        echo "B ";
        }
        elseif ($i % $fizz == 0){
        echo 'F ';
    }
        else echo $i . " ";
}
echo "<br/>";

for ($i = 1; $i <= $num; $i++) {
$output = '';
if ($i % $fizz == 0) {
$output .= 'F';
}
if ($i % $buzz == 0) {
$output .= 'B';
}
if (!$output) {
$output = $i;
}
echo $output . ' ';
}
?>
    </body>
</html>