<?php
class Motorcycle extends Vehicles implements Abc
{
    private $countGear;
    private $fuel;

    public function __construct($power, $countWheels, $countGear, $fuel)
    {
        parent::__construct($power, $countWheels);
        $this->countGear=$countGear;
        $this->fuel=$fuel;
    }
    public function maxSpeed(){
        echo $this->countGear * $this->power;
    }
    public function maxMileage(){
        return $this->fuel * 10;
    }
    public function countWheels(){
        return 'This vehicle has ' . $this->countWheels . ' wheels';
    }
    public function getcountGear()
    {
        return $this->countGear;
    }
    public function setcountGear($countGear)
    {
        $this->countGear = $countGear;
    }
    public function getfuel()
    {
        return $this->fuel;
    }
    public function setfuel($fuel)
    {
        $this->fuel = $fuel;
    }

}
