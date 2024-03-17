<?php

declare(strict_types=1);

$a = 0;
$b = '0';
$c = '1';
$d = '1';

assert($a == $b); // false
assert($c != $a); // true
assert($c <> $a); // true
assert($a < $c);  // true
assert($a <= $b); // true
assert($c >= $d); // true

assert($c === $d); // true
assert($a !== $d); // true
assert(1 === '1'); // false
assert(1 !== '1'); // true

$a = 100;
$b = 1000;

$a <=> $a; // 0 since they are equal
$a <=> $b; // -1 since $a < $b
$b <=> $a; // 1 since $b > $a
