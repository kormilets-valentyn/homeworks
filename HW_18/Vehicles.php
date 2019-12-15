<?php
echo "Vehicles include";
abstract class Vehicles                                                 //Open/Closed principle
{                                                                           //Dependency Inversion principle
    protected $power;
    protected $countWheels;
    public function __construct($power, $countWheels){
        $this->power=$power;
        $this->countWheels= $countWheels;
    }
    abstract public function maxSpeed();
    public function showSpeed(){
        $this->maxSpeed();
    }
}
echo '<br/>' . '______________________' . '<br/>';
new Motorcycle;


