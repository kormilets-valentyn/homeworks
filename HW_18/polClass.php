<?php
echo 'polClass include';
echo '<br/>';
class polClass {
    public function render (Vehicles $speed){
        $speed->showSpeed();
    }
}
$aaa = new Motorcycle(111,2,4,15);
$bbb = new ATV(60,3,10);
$d = new polClass();
echo 'Полиморфизм: ';
$d->render($aaa);
echo " ";
$d->render($bbb);