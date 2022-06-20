<?php
/*
  ===================
  Types and variables
  ===================
*/

declare(strict_types=1);

// simple argument
function fn1(string $arg)
{
    echo $arg;
}

fn1("simple argument \n");

// callback
function fn2($arg)
{
    $arg();
}

fn2(function () {
    echo "Call back \n";
});

// default argument
function fn3($arg = "hello world")
{
    echo $arg . "\n";
}

fn3();

// infinite args
function fn4(...$args)
{
    echo gettype($args) . "\n";
}

fn4("primeiro", "segundo");
