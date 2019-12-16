<?php
class ATV extends Vehicles implements Abc
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
