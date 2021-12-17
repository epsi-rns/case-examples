<?php
require_once(__DIR__.'/MySongs.php');

$tagss = [];
foreach($songs as $song) {
  if(array_key_exists('tags', $song))
    $tagss[] = $song['tags'];
}

printf("%s\n", json_encode($tagss));
