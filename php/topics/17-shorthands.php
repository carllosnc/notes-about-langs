<?php
// https://stitcher.io/blog/shorthand-comparisons-in-php#shorthand-ternary-operator

declare(strict_types=1);

// ternary
{
    $foo = true ? 'hello' : 'world';
    echo $foo . "\n";
}

// short ternary operator
{
    $span = 'hello world';
    $bar = $span ?: 'default value';
    echo $bar . "\n";
}

// chaining ternary operators
{
    $firstCondition = true;
    $elseCondition = false;

    $result = ($firstCondition ? 'truth' : $elseCondition)
        ? 'elseTrue'
        : 'elseFalse';
}

// null coalescing operator
{
    echo $undefined ?? "fallback \n"; // fallback

    $unassigned;
    echo $unassigned ?? "fallback \n"; // fallback

    $assigned = "foo \n";
    $assigned ?? "fallback \n";
    echo $assigned; // foo

    echo '' ?? "fallback \n"; // ''

    echo "bar \n" ?? "fallback \n"; // bar

    echo "0 \n" ?? "fallback \n"; // '0'

    echo 0 ?? "fallback \n"; // 0

    echo false ?? "fallback \n"; // false
}

// Null coalescing on arrays
{
    $input = [
        'key' => "key \n",
        'nested' => [
            'key' => true
        ]
    ];

    echo $input['key'] ?? "fallback \n"; // key

    echo $input['nested']['key'] ?? "fallback \n"; // true

    echo $input['undefined'] ?? "fallback \n"; // fallback

    echo $input['nested']['undefined'] ?? "fallback \n"; // fallback

    echo null ?? "fallback \n";
}

// Null coalesce chaining
{
    $input = [
        "key" => "value \n"
    ];

    echo $input["undefined"] ?? $input["key"] ?? "fallback"; // key
}

// Nested coalescing
{
    $a = (object) [
        'prop' => null
    ];

    var_dump($a->prop->b ?? 'empty');
}

// Null coalescing assignment operator
{
    function fn1(array $parameters = [])
    {
        $parameters['property'] ??= 'default';
    }

    // equivalent
    function fn2(array $parameters = [])
    {
        $parameters['property'] = $parameters['property'] ?? 'default';
    }
}

// Spaceship operator
