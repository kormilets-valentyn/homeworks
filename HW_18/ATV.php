<?php
echo "ATV include";
echo '<br/>';
class ATV extends Vehicles implements Abc                                   //Liskov substitution principle
{
    public $newTrunk;
    public function __construct($power, $countWheels, $newTrunk)
    {
        parent::__construct($power, $countWheels);
        $this->newTrunk=$newTrunk;
    }
    public function maxSpeed(){
        echo $this->power * 1.5;
    }
    public function maxMileage(){
        return 'Max Mileage = 100km';
    }
    public function countWheels(){
        return 'This vehicle has ' . $this->countWheels . ' wheels';
    }
    public function trunkVol(){
        return $this->newTrunk * 2;
    }
}
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
new polClass();