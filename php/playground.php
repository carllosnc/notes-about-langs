<?php

trait Name
{
    public function printName()
    {
        echo $this->name;
    }
}

class Person
{
    use Name;

    public $name;
    public $age;

    public function __construct($name, $age)
    {
        $this->name = $name;
        $this->age = $age;
    }

    public function introduce()
    {
        return "Hello my name is {$this->name} and I am {$this->age} years old";
    }
}

$person = new Person('John', 42);
$person->printName();
