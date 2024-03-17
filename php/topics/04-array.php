<?php

declare(strict_types=1);

// basic array
{
    $elements = array("primeiro", "segundo", "terceiro");

    foreach ($elements as $value) {
        echo "$value \n";
    }
}

// associative array - key => value
{
    $elements = array(1 => "primeiro", 2 => "segundo", 3 => "terceiro");

    foreach ($elements as $key => $value) {
        echo "$key => $value \n";
    }
}

// map array
{
    array_map(function ($element) {
        echo "Array map -> $element" . "\n";
    }, $elements);
}

// filter array
{
    $elements = array_filter($elements, function ($element) {
        return $element === "primeiro";
    });

    foreach ($elements as $value) {
        echo "$value \n";
    }
}
