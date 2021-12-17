<?php
require_once(__DIR__.'/MySongs.php');

function walk($song) {
  return isset($song['tags']) ?
    $song['tags'] : null;
}

$tagss = array_map('walk', $songs);

printf("%s\n", json_encode($tagss));
