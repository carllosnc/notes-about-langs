<?php

declare(strict_types=1); {
    enum status: string
    {
        case PENDING = 'pending';
        case PUBLISHED = 'published';
        case STARRED = 'starred';
        case DENIED = 'denied';
    }

    echo status::PENDING->name . "\n";
    echo status::PUBLISHED->name . "\n";
    echo status::STARRED->name . "\n";
    echo status::DENIED->name . "\n";
} {
    enum Color
    {
        case Red;
        case Green;
        case Blue;
    }

    function printColor(Color $color)
    {
        match ($color) {
            Color::Red => print("Red \n"),
            Color::Green => print("Green \n"),
            Color::Blue => print("Blue \n"),
        };
    }

    printColor(Color::Red);
    printColor(Color::Green);
    printColor(Color::Blue);
} {
    //enum with function inside
    enum Color
    {
        case Red;
        case Green;
        case Blue;
        case Purple;

        public function printColor()
        {
            match ($this) {
                Color::Red => print("😡 Color: Red \n"),
                Color::Green => print("🤢 Color: Green \n"),
                Color::Blue => print("🥶 Color: Blue \n"),
                Color::Purple => print("👿 Color: Purple \n"),
            };
        }
    }
}
