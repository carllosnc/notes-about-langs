<?php

require 'file.php';

use Math\Basic\Calc;
use Math\Geometry\Triangle;

$calc = new Calc();
echo $calc->add(1, 2);

$triangle = new Triangle();
echo $triangle->area(3, 4);
