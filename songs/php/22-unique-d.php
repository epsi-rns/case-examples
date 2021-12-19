<?php
require_once(__DIR__.'/MyClassSongs.php');

function unique($tags) {
  if(sizeof($tags) <= 1) return $tags;
  else {
    $head = array_shift($tags);
    $exclude = array_values(
      array_diff($tags, [$head]));
    return array_merge(
      [$head], unique($exclude)
    );
  }
}

$tagss = array_map(
  function ($song) { return $song->tags; },
  $songs);

$tags = array_merge(...$tagss);
$tags = unique($tags);

printf("%s\n", json_encode($tags));
