<?php

class Singleton
{
    private static $instances = [];

    private function __construct()
    {
    }

    protected function __clone()
    {
    }

    public function __wakeup()
    {
        throw new \Exception('Cannot serialize a singleton');
    }


    public static function getInstance(): Singleton
    {
        $cls = self::class;

        if (!isset(self::$instances[$cls])) {
            self::$instances[$cls] = new self();
        }

        return self::$instances[$cls];
    }
}

$s1 = Singleton::getInstance();
$s2 = Singleton::getInstance();

if ($s1 == $s2) {
    print('Singleton works');
}
