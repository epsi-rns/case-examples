<?php
require_once(__DIR__.'/MySongs.php');

$tagss = [];
foreach($songs as $song) {
  if(array_key_exists('tags', $song))
    $tagss[] = $song['tags'];
}

function flatten(array $tagss) {
  $tags = array();
  array_walk_recursive(
    $tagss,
    function($element) use (&$tags) {
      $tags[] = $element;
    }
  );
  return $tags;
}

printf("%s\n", json_encode(flatten($tagss)));
