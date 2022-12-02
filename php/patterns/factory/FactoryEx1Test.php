<?php

namespace patterns\factory\FactoryEx1;

abstract class Creator
{
    abstract public function factoryMethod(): Product;

    public function operation(): string
    {
        $product = $this->factoryMethod();

        $result = "Cretor: The same creator's code has just worket with" . $product->operation();

        return $result;
    }
}

interface Product
{
    public function operation(): string;
}

class ConcreteCreator1 extends Creator implements Product
{
    public function operation(): string
    {
        return "{ConcreteProduct1}";
    }

    public function factoryMethod(): Product
    {
        return new ConcreteCreator1();
    }
}

class ConcreteCreator2 extends Creator implements Product
{
    public function operation(): string
    {
        return "{ConcreteProduct2}";
    }

    public function factoryMethod(): Product
    {
        return new ConcreteCreator2();
    }
}

function clientCode(Creator $creator)
{
    return "Client: " . $creator->operation();
}

test('Check concrete product 1', function () {
    expect(clientCode(new ConcreteCreator1()))->toBe('Client: {ConcreteProduct1}');
});

test('Check concrete product 2', function () {
    expect(clientCode(new ConcreteCreator2()))->toBe('Client: {ConcreteProduct2}');
});
