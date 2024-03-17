<?php

declare(strict_types=1);

// simple argument
{
    function fn1(string $arg)
    {
        echo $arg;
    }
    fn1("simple argument \n");
}

// callback
{
    function fn2(callable $arg)
    {
        $arg();
    }

    fn2(function () {
        echo "Call back \n";
    });
}

// default argument
{
    function fn3($arg = "hello world")
    {
        echo $arg . "\n";
    }

    fn3();
}

// infinite args
{
    function fn4(...$args)
    {
        echo gettype($args) . "\n";
    }

    fn4("primeiro", "segundo");
}

// named arguments
{
    function fn5($arg1, $arg2)
    {
        echo $arg1 . " " . $arg2 . "\n";
    }

    fn5(arg2: "primeiro", arg1: "segundo");
}

// typed return
{
    function fn6(int $arg): int
    {
        return $arg;
    }

    echo fn6(10) . "\n";
}

// typed return and args
{
    function fn7(int $arg1, int $arg2): int
    {
        return $arg1 + $arg2;
    }

    echo fn7(10, 20) . "\n";
}
