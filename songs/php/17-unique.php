<?php
require_once(__DIR__.'/MyClassSongs.php');

$tags =
  array_values(
    array_unique(
      array_merge(
        ... array_map(
          function ($song) {
            return $song->tags; },
          $songs)
  )));


printf("%s\n", json_encode($tags));
