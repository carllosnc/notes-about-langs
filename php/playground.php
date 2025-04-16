<?php

function getOpenGraphImage($url)
{
  $ch = curl_init($url);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
  curl_setopt($ch, CURLOPT_MAXREDIRS, 5);
  curl_setopt($ch, CURLOPT_TIMEOUT, 10);
  $html = curl_exec($ch);

  echo "hello world!";
}


$websiteUrl = 'https://github.com/asdf-vm/asdf-plugins';
$ogImage = getOpenGraphImage($websiteUrl);

echo $ogImage;
