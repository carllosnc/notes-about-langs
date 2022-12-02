<?php

namespace App;

class Element
{
    public function __construct()
    {
        echo Element::class;
    }

    public static function method()
    {
        return "Element method \n";
    }
}
