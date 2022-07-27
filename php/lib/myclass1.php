<?php

// Set the namespace for a file

namespace lib\classes;

class MyClass
{
    private $prop = "my prop";

    public function __get($key)
    {
        return $this->$key;
    }

    public function __set($key, $value)
    {
        $this->$key = $value;
    }
}


$foo = new MyClass();
