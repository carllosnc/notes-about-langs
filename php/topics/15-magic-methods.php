<?php

declare(strict_types=1);

class Person
{
    private string $name;

    // magic methods

    public function __construct(String $name)
    {
        $this->name = $name;
    }

    public function __set($name, $value)
    {
        $this->$name = $value;
    }

    public function __get($name)
    {
        return $this->$name;
    }

    public function __destruct()
    {
        echo 'Destruct object';
    }

    public function __toString()
    {
        return '[Object Person] -> The name is: ' . $this->name;
    }

    public function __call($fn, $args)
    {
        echo 'Calling inacessive function: ' . $fn;
    }

    public static function __callStatic($fn, $args)
    {
        echo 'Calling inacessive static function: ' . $fn;
    }

    public function __isset($name)
    {
        echo 'isset value';

        return 'isset value';
    }

    // functions

    public static function staticFn()
    {
        return "A simple static function";
    }

    public function fn()
    {
        return "A simple function";
    }
}

$bob = new Person('Bob', 20);

$bob->fn1();
Person::staticFn1();

$seri = serialize($bob);

var_dump($seri);
