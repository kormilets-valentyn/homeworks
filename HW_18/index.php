<?php
include 'autoload.php';
echo 'Motorcycle';
echo '<br/>';
$a = new Motorcycle(80,2,4,15);
echo 'Max speed = ';
$a->maxSpeed();
echo '<br/>';
echo $a->countWheels();
echo '<br/>';
echo $a->maxMileage();
echo '<br/>' . '______________________' . '<br/>';

$sc = new Scooter (100 ,2, 123);
Scooter::$exam = 8;
echo $sc->trunkVolume();
echo '<br/>';
echo Scooter::smthSmth();
echo '<br/>';
echo 'Max speed: ';
$sc->maxSpeed();
echo '<br/>' . '______________________' . '<br/>';

$atv1 = new ATV (90, 4, 40);
echo 'Max speed = ';
$atv1->maxSpeed();
echo '<br/>';
echo $atv1->maxMileage();
echo '<br/>';
echo $atv1->countWheels();
echo '<br/>';
echo $atv1->trunkVol();
echo '<br/>' . '______________________' . '<br/>';
$aaa = new Motorcycle(100,2,5,15);
$bbb = new ATV(60,3,10);

$d = new polClass();
echo 'Полиморфизм: ';
$d->render($aaa);
echo " ";
$d->render($bbb);




