<?php
require_once(__DIR__.'/MySongs.php');

foreach($songs as $song) {
  printf("%s\n", json_encode($song));
}
