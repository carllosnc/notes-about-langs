<?php
/*
  ===================
  Namespace
  ===================
*/

include "../lib/myclass1.php";

// Using the namespaces

use lib\classes as MyLib;
use lib\classes\MyClass;

$foo = new MyLib\MyClass();
$bar = new MyClass();

var_dump($foo);
var_dump($bar);
