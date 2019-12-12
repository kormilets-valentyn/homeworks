<?php
interface Abc{                                                              //Liskov substitution principle
    public function maxSpeed();
    public function maxMileage();
    public function countWheels();
}
abstract class Vehicles                                                     //Open/Closed principle
{                                                                           //Dependency Inversion principle
    protected $power;
    protected $countWheels;
    public function __construct($power, $countWheels){
        $this->power=$power;
        $this->countWheels= $countWheels;
    }
}

class Motorcycle extends Vehicles implements Abc                            //Liskov substitution principle
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
        return $this->countGear * $this->power;
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
$a = new Motorcycle(70,2,4,15);
echo 'Max speed = ' . $a->maxSpeed();
echo '<br/>';
echo $a->countWheels();
echo '<br/>';
echo $a->maxMileage();
echo '<br/>' . '______________________' . '<br/>';

class Scooter extends Vehicles {
    public $trunk;
    public static $exam;
    public function __construct($power, $countWheels, $trunk)
    {
        parent::__construct($power, $countWheels);
        $this->trunk=$trunk;
    }
    public function trunkVolume(){
        return 'Volume = ' . $this->trunk;
    }
    public static function smthSmth(){
        return 'For example ' . self::$exam *2;
}
}
$a = new Scooter (11221,2, 123);
Scooter::$exam = 8;
echo $a->trunkVolume();
echo '<br/>';
echo Scooter::smthSmth();
echo '<br/>' . '______________________' . '<br/>';

class ATV extends Vehicles implements Abc                                   //Liskov substitution principle
{
    public $newTrunk;
    public function __construct($power, $countWheels, $newTrunk)
    {
        parent::__construct($power, $countWheels);
        $this->newTrunk=$newTrunk;
    }
    public function maxSpeed(){
        return $this->power * 1.5;
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
echo 'Max speed = ' . $atv1->maxSpeed();
echo '<br/>';
echo $atv1->maxMileage();
echo '<br/>';
echo $atv1->countWheels();
echo '<br/>';
echo $atv1->trunkVol();