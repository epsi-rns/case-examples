<?php
require_once(__DIR__.'/MySongs.php');

array_walk($songs, function($song) {
  printf("%s\n", json_encode($song));
});
