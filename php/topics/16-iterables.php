<?php

declare(strict_types=1);

// arguments
function foo(iterable $iterable)
{
    foreach ($iterable as $key => $value) {
        print($key . " => " . $value . "\n");
    }
}

foo([
  'first' => 'primeiro',
  'second' => 'segundo',
  'third' => 'terceiro'
]);

// function type
function bar(): iterable
{
    return [];
}
