<?php
class Humans {
    public $name;
    public $surname;
    public $age;
    function __construct($name, $surname, $age)
    {
        $this->name = $name;
        $this->surname = $surname;
        $this->age = $age;
    }

    function getInfo() {
        $info = "Name: " . $this-> name . " Surname: " . $this-> surname . " Age: " . $this->age;
        return $info;
    }
}
$h1 = new Humans("Vasilii", "Petrov", "30");
$h2 = new Humans("Ivan", "Smirnov", "45");
$h3 = new Humans("Yurii", "Galtsev", "53");
echo $h1 -> getInfo();
echo '<br/>';
echo $h2 -> getInfo();

class Users extends Humans{
    public $login;
    public $pass;
    protected $email;

    function __construct($name, $surname, $age, $login, $pass, $email){
        parent:: __construct($name, $surname, $age);
        $this->login=$login;
        $this->pass=$pass;
        $this->email=$email;
    }
    function getInfo() {
        $info = parent::getInfo();
        $info .= "///Login: " . $this-> login  . " ///Pass: " . $this-> pass . " ///Email: " . $this-> email;
        echo '<br/>';
        return $info;
    }
}
$admin = new Users('Andrey', 'Kolobkov','33','andrrr','123456','andrew@gmail.com');
$admin2 = new Users('Grigorii', 'Konovalov', '35', 'gkon', '11111', 'konovalov@gmail.com');
echo $admin2 -> getInfo();

class Dev extends Users
{
    public $direction;
    private $level;
    private $skill;

    function __construct($name, $surname, $age, $login, $pass, $email, $direction, $level)
    {
        parent:: __construct($name, $surname, $age, $login, $pass, $email);
        $this->level = $level;
        $this->direction = $direction;
    }

    public function __get($lalala){
//        echo "Test to get {$lalala}";
    }

    public function __set($lalala, $val){
//        echo "Test to set {$lalala} {$val}";
    }
    function getInfo()
    {
        $info = parent::getInfo();
        $info .= "///Direction: " . $this->direction . " ///Level: " . $this->level;
        return $info;
    }
}
$dev1 = new Dev("Hariton", "Petrenko", "29", "qwerty", 'qwerty', 'hariton@gmail.com', 'PHP', 'middle');
$dev2 = new Dev("Anna", "Vakulenko", "23", "Annnn", 'zxzxzx', 'sdfdsfds' ,'JS','pre-junior');
$dev3 = new Dev("Artur", "Kovalenko", "27", "Arturio", '1234567890', '','WebDesign','');

echo $dev1->getInfo();
echo $dev2->getInfo();
echo $dev3->getInfo();
echo '<br/>';
echo $dev3 -> skill = "Coolman";
echo $dev3->direction;
echo $dev2->skill = "dsfkljdsf";