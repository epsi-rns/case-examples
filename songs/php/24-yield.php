<?php
function sender($songs) {
  foreach($songs as $song) {
    foreach($song->tags as $tag) {
      yield $tag;
    }
  }
}

# main: entry point
require_once(__DIR__.'/MyClassSongs.php');

$tags = iterator_to_array(
  sender($songs), true);

printf("%s\n", json_encode($tags));

