<?php

declare(strict_types=1);

trait HexColors
{
    public function getHexColor(): string
    {
        return match ($this) {
            Colors::RED => "#FF0000",
            Colors::GREEN => "#00FF00",
            Colors::BLUE => "#0000FF",
            default => "#000000",
        };
    }

    public function getRgbColor(): string
    {
        return match ($this) {
            Colors::RED => "rgb(255, 0, 0)",
            Colors::GREEN => "rgb(0, 255, 0)",
            Colors::BLUE => "rgb(0, 0, 255)",
            default => "rgb(0, 0, 0)",
        };
    }
}

enum Colors: string
{
    use HexColors;

    case RED = "red";
    case GREEN = "green";
    case BLUE = "blue";
}

$red = Colors::RED;
echo $red->getHexColor(); // #FF0000
echo $red->getRgbColor(); // rgb(255, 0, 0)
