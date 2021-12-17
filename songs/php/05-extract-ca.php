<?php
require_once(__DIR__.'/MySongs.php');

$tagss = array_map(
  function ($song) { return $song['tags']; },
  array_filter($songs, function ($song) {
    return array_key_exists('tags', $song);
  })
);

printf("%s\n", json_encode($tagss));
