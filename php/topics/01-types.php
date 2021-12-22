<?php
/*
  ===================
  Types and variables
  ===================
*/

declare(strict_types=1);

// booleans
$boolean1 = true;
$boolean2 = false;

// integer
$int1 = 12;
$int2 = -12;
$int3 = 012;
$int4 = 0x0F;
$int5 = 0b11111111;

// float
$float1 = 1.1234;
$float2 = 1.2e3;
$float3 = 7E-10;

// delete variable
unset($int1);

// arithmetic
$sum = 1 + 1;
$diference = 2 - 1;
$product = 2 * 2;
$quotient = 2 / 1;

// shorthand arithmetic
$number = 0;
$number += 1;
$number++;
++$number;
$number /= $float1;

// get types
$_number = 10;
$_string = "hello world";
$_boolean = true;
$_double = 10.2;
$_array = array(1, 2, 3);
$_object = new stdClass;
$_null = NULL;
$_resource = tmpfile();

echo gettype($_number)."\n";
echo gettype($_string)."\n";
echo gettype($_boolean)."\n";
echo gettype($_double)."\n";
echo gettype($_array)."\n";
echo gettype($_object)."\n";
echo gettype($_null)."\n";
echo gettype($_resource)."\n";
