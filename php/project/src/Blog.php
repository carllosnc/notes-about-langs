<?php namespace App;

class Blog
{
    public function __construct()
    {
        echo Blog::class;
    }

    public static function foo()
    {
        return "this is a simple function \n";
    }
}
