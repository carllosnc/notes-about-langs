<?php

declare(strict_types=1);

// if/else

{
    if (true) {
        echo "condition 1 \n";
    } elseif (true) {
        echo "condition 2 \n";
    } else {
        echo "condition 3 \n";
    }
}

// switch case
{
    $x1 = "two";

    switch ($x1) {
        case "zero":
            print "--ZERO-- \n";
            break;
        case "one":
            print "--ONE-- \n";
            break;
        case "two":
            print "--TWO-- \n";
            break;
        default:
            print "default option \n";
    }
}

// ternary
{
    $ternary = true ? "Hello" : "world";
    echo $ternary . "\n";
}

// shorthand ternary
{
    $short = false ?: "first";
    echo $short; // first

    var_dump(5 ?: 0); // 5
    var_dump(false ?: 0); // 0
    var_dump(null ?: 'foo'); // 'foo'
    var_dump(true ?: 123); // true
    var_dump('rock' ?: 'roll'); // 'rock'
}

// null coalesce
{
    $a = null;
    $b = "Does print\n";
    echo $a ?? "a is not set\n";
    echo $b ?? "b is not set\n";
}
