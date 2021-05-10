<?php

trait Fiz{
  static function fn1(){
    echo "Fiz trait";
  }
}

trait Bar{
  use Fiz;
}

class Foo {
  use Bar;
}

Foo::fn1();
