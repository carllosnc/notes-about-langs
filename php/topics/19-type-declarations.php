<?php

declare(strict_types=1);

// typed function
{
    function fn1(string $arg): string
    {
        return $arg;
    }
}

// typed class, props and methods
{
    class Element
    {
        public string $prop;

        public function __construct(string $prop)
        {
            $this->prop = $prop;
        }

        public function method(string $arg): string
        {
            return $arg;
        }
    }
}
