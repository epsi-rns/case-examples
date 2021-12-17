<?php
require_once(__DIR__.'/MyClassSongs.php');

function exclude($val, $tags) {
  return array_values(
    array_filter(
      $tags,
      function ($tag) use ($val) {
        return $tag != $val; 
    }));
}

function unique($tags) {
  if(sizeof($tags) <= 1) return $tags;
  else {
    $head = array_shift($tags);
    return array_merge(
      [$head],
      unique(exclude($head, $tags))
    );
  }
}

$tagss = array_map(
  function ($song) { return $song->tags; },
  $songs);

$tags = array_merge(...$tagss);
$tags = unique($tags);

printf("%s\n", json_encode($tags));
