<?php
echo "Scooter include";
echo '<br/>';
class Scooter extends Vehicles {
    public $trunk;
    public static $exam;
    public function __construct($power, $countWheels, $trunk)
    {
        parent::__construct($power, $countWheels);
        $this->trunk=$trunk;
    }
    public function maxSpeed(){
        echo $this->power;
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
new ATV();