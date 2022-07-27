<?php

declare(strict_types=1);

// arrow function
{
    $sum = fn (int $x, int $y) => $x + $y;
    echo $sum(2, 2);
    echo PHP_EOL;
}

// using external resources
{
    $y = 1;

    $fn1 = fn ($x) => $x + $y;

    // equivalent

    $fn2 = function ($x) use ($y) {
        return $x + $y;
    };

    echo $fn1(3);
    echo PHP_EOL;
    echo $fn2(3);
    echo PHP_EOL;
}

// array map with arrow function
{
    $list = [10, 20, 30];

    $result = array_map(
        fn ($item) => $item * 2,
        $list
    );

    echo implode(", ", $result);
}
