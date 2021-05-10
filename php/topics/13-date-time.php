<?php
/*
  ===================
  Date time
  ===================
*/

$raw = "22. 11. 1968";
$start = DateTime::createFromFormat("d. m. Y", $raw);

$end = clone $start;
$end->add(new DateInterval('P1M6D'));

$diff = $end->diff($start);

echo "Start date: " . $start->format("Y-m-d") . "\n";
echo "Difference: " . $diff->format("%m month. %d day (total: %a days)") . "\n";

if($start < $end){
  echo "Start is before the end!\n";
}
