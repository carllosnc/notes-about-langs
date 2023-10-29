<?php

declare(strict_types=1);

{
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
}
