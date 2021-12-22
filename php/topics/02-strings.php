<?php
/*
  ===================
  Strings
  ===================
*/

declare(strict_types=1);

// string should be enclosed in single quotes
$single_quotes = '$string'; // => $String
$double_quotes = "String -> $single_quotes"; // String -> $string

$escaped = "This contain a \t tab character";
$uncaped = "This contains a slash and a t: \t";

// enclose a variable
$apples = "I have {$number} apples to eat";
$oranges = "I have ${number} oranges to eat";
$money = "I have $${number} in the bank";

// since php 5.3, newdocs can be used for uniterpolated multi-liners

// nowdoc
$nowdoc = <<<'END'
  Multi line
  $single_quotes
END;

// heredocs
$heredoc = <<<END
  Multi line
  $single_quotes
END;

// string concatenation is done with
echo "\nThis string" . "is concatenated \n";
echo "Multiple ", "parameters ", "valid";
