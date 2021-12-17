<?php
require_once(__DIR__.'/MySongs.php');

$songs = array_filter($songs, function ($song) {
  return array_key_exists('tags', $song);
});

$tagss = array_map(function ($song) {
  return $song['tags'];
}, $songs);

printf("%s\n", json_encode($tagss));
