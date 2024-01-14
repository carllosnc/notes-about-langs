<?php

declare(strict_types=1);

$a = 0;
$b = '0';
$c = '1';
$d = '1';

echo assert($a == $b);
echo assert($c != $a);
echo assert($c <> $a);
echo assert($a < $c);
echo assert($a <= $b);
echo assert($c >= $d);

echo assert($c === $d);
echo assert($a !== $d);
echo assert(1 === '1');
echo assert(1 !== '1');

$a = 100;
$b = 1000;

echo $a <=> $a; // 0 since they are equal
echo $a <=> $b; // -1 since $a < $b
echo $b <=> $a; // 1 since $b > $a
