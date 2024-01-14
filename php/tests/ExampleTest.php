<?php

class Calc
{
    private $value = 0;

    public function add($value)
    {
        $this->value += $value;
        return $this;
    }

    public function subtract($value)
    {
        $this->value -= $value;
        return $this;
    }

    public function multiply($value)
    {
        $this->value *= $value;
        return $this;
    } 

    public function divide($value)
    {
        $this->value /= $value;
        return $this;
    }

    public function __get($name)
    {
        return $this->value;
    }
}

test('check calc', function () {
    $calc = new Calc();
    $calc->add(2)->multiply(3)->divide(2)->subtract(3);

    expect($calc->value)->toBe(0);
});

