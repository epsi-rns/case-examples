<?php
require_once(__DIR__.'/MyClassSongs.php');

foreach($songs as $song) {
  printf("%s: [%s]\n",
    $song->title,
    join(', ', $song->tags));
}
