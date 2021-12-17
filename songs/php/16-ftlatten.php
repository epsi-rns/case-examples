<?php
require_once(__DIR__.'/MyClassSongs.php');

$tagss = array_map(
  function ($song) { return $song->tags; },
  $songs);

$tags = array_merge(...$tagss);

printf("%s\n", json_encode($tags));
