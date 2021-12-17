<?php
require_once(__DIR__.'/MySongs.php');

$songs = array_filter($songs, function ($song) {
  return isset($song['tags']);
});

$tagss = array_map(function ($song) {
  return $song['tags'];
}, $songs);

printf("%s\n", json_encode($tagss));
