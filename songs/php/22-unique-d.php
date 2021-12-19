<?php
require_once(__DIR__.'/MyClassSongs.php');
require_once(__DIR__.'/MyHelperUnique.php');

$tagss = array_map(
  function ($song) { return $song->tags; },
  $songs);

$tags = array_merge(...$tagss);
$tags = unique($tags);

printf("%s\n", json_encode($tags));
