<?php
require_once(__DIR__.'/MySongs.php');

$tags = [];
foreach($songs as $song) {
  if(array_key_exists('tags', $song))
    foreach($song['tags'] as $tag) {
      $tags[] = $tag;
    }
}

printf("%s\n", json_encode($tags));
