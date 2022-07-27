<?php

declare(strict_types=1);

trait Base
{
    public static $type = "Base Trait";

    // magic methods
    public function __get($name)
    {
        return $this->$name;
    }

    public function __set($name, $value)
    {
        return $this->$name = $value;
    }

    // abstract method
    abstract public function getClassType(): String;

    // static method
    public static function getBaseTrait()
    {
        return "<BaseTrait>";
    }
}

trait Comunication
{
    use Base;

    // variable
    public $reference = "trait comunication";

    // method
    public function sayMyName()
    {
        echo "My name is " . $this->name . "\n";
    }

    public function getClassType(): String
    {
        return $this->classType;
    }
}

class People
{
    use Comunication;

    private $name;
    private $classType = "<Class People>";

    public function __construct(String $name)
    {
        $this->name = $name;
    }
}

$bob = new People("Bob");

var_dump($bob);

// Calling the trait

$bob->sayMyName();
$bob->name = "Jack";
echo "Call the object - " . $bob->name . "\n";
echo "Call the object - " . $bob->getClassType() . "\n";
echo "Call the object - " . People::getBaseTrait() . "\n";
echo "Call the object - " . People::$type . "\n";

// Calling the trait

echo "Call the trait - " . Base::$type . "\n";
echo "Call the trait - " . Base::getBaseTrait() . "\n";
