<?php
/*
  ===================
  Logic
  ===================
*/

declare(strict_types=1);

$a = 0;
$b = '0';
$c = '1';
$d = '1';

assert($a == $b);
assert($c != $a);
assert($c <> $a);
assert($a < $c);
assert($a <= $b);
assert($c >= $d);

assert($c === $d);
assert($a !== $d);
assert(1 === '1');
assert(1 !== '1');

$a = 100;
$b = 1000;

echo $a <=> $a; // 0 since they are equal
echo $a <=> $b; // -1 since $a < $b
echo $b <=> $a; // 1 since $b > $a
