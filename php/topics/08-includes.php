<?php

declare(strict_types=1);

// require will produce a fatal error (E_COMPILE_ERROR) and stop the script
// include will only produce a warning (E_WARNING) and the script will continue

{
    include "../lib/calc.php";
    // include_once "../lib/calc.php";
    // require "../lib.calc.php";
    // require_once "../lib/calc.php";

    print("add " . add(10, 20) . "\n");
    print("dif " . dif(10, 20) . "\n");
    print("mult " . mult(10, 20) . "\n");
    print("div " . div(10, 20) . "\n");
} {
    $foo = require "../lib/resources.php";

    var_dump($resources);
}
