<?php

declare(strict_types=1);

/*
  - contrcutor
  - constants
  - static
  - contructor
  - getters and setters
  - interface
  - inheritance
*/

interface Info
{
    public function getInfo();
}

class Master
{
    private $address;

    public function __construct(String $address)
    {
        $this->address = $address;
    }
}

class Person extends Master implements Info
{
    // static and constans
    public const REFERENCE = "<Class Person>";
    public static $description = "Person Class description";

    // accessors
    private $name;
    private $lastname;
    private $email;
    public $lang;
    protected $id = "298392";

    // constructor
    public function __construct(
        String $name,
        String $lastName,
        String $email,
        String $lang,
        String $address
    ) {
        $this->name = $name;
        $this->lastName = $lastName;
        $this->email = $email;
        $this->lang = $lang;

        parent::__construct($address);
    }

    // methods
    public function SayMyName()
    {
        print("\nMy name is: $this->name \n\n");
    }

    public static function StaticMethod()
    {
        print("A simple static method");
    }

    // interface method
    public function getInfo()
    {
        return array(
      "nome" => $this->nome,
      "lastName" => $this->lastName,
      "email" => $this->email,
      "lang" => $this->lang
    );
    }

    // getters and setters
    public function __get($key)
    {
        return $this->$key;
    }

    public function __set($key, $value)
    {
        $this->$key = $value;
    }
}

// instancing a new object
$bob = new Person("Bob", "Doe", "Bob@gmail.com", "php", "836 Adella Locks");

var_dump($bob);
var_dump(Person::REFERENCE);
var_dump(Person::$description);

// Calling the static method
Person::StaticMethod();

$bob->name = "Bob";

$bob->SayMyName();
print($bob->name);
