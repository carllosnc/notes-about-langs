<?php

#[Attribute]
class ExampleAttribute
{
  private string $message;
  private int $answer;

  public function __construct(string $message, int $answer)
  {
    $this->message = $message;
    $this->answer = $answer;
  }
}

#[ExampleAttribute('Hello', 42)]
class Example
{
}

$reflection = new ReflectionClass(Example::class);
$attributes = $reflection->getAttributes();

foreach ($attributes as $attribute) {
  var_dump($attribute->getName());
  //string(16) "ExampleAttribute"

  var_dump($attribute->getArguments());
  /*
  array(2) {
  [0]=>
  string(5) "Hello"
  [1]=>
  int(42)
  */

  var_dump($attribute->newInstance());
  /*
  object(ExampleAttribute)#3 (2) {
    ["message":"ExampleAttribute":private]=>
    string(5) "Hello"
    ["answer":"ExampleAttribute":private]=>
    int(42)
  }
  */
}
