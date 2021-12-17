<?php
require_once(__DIR__.'/MyClassSongs.php');

$tagss = array_map(
  function ($song) { return $song->tags; },
  $songs);

printf("%s\n", json_encode($tagss));
