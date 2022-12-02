<?php

namespace patterns\factory\FactoryEx2;

interface Button
{
    public function render();
}

class WindowsButton implements Button
{
    public String $label;

    public function __construct(String $label)
    {
        $this->label = $label;
    }

    public function render()
    {
        return "Windows button: " . $this->label;
    }
}

class LinuxButton implements Button
{
    public String $label;

    public function __construct(String $label)
    {
        $this->label = $label;
    }

    public function render()
    {
        return "Linux button:" . $this->label;
    }
}

class App
{
    public Button $button;

    public function __construct(String $type)
    {
        if ($type === 'windows') {
            $this->button = new WindowsButton('WButton');
        }

        if ($type === 'linux') {
            $this->button = new LinuxButton('LButton');
        }
    }
}

$wapp = new App('windows');
$lapp = new App('linux');

echo $wapp->button::class;
echo "\n";
echo $lapp->button::class;
