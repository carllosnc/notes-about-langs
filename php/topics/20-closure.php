<?php

declare(strict_types=1);

// lambda, anon function
{
    $fn = function () {
        echo 'hello world';
    };

    $fn();

    echo PHP_EOL;
}

// passing function to function
{
    function math(Closure $type, $first, $second)
    {
        return $type($first, $second);
    }

    $addition = function ($first, $second) {
        return $first + $second;
    };

    $subtraction = function ($first, $second) {
        return $first - $second;
    };

    echo math($addition, 2, 2);

    echo PHP_EOL;

    echo math($subtraction, 5, 3);
}
