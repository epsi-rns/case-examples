<?php
$songs = [
  [ 'title' => 'Cantaloupe Island',
    'tags'  => ['60s', 'jazz'] ],
  [ 'title' => 'Let It Be',
    'tags'  => ['60s', 'rock'] ],
  [ 'title' => 'Knockin\' on Heaven\'s Door',
    'tags'  => ['70s', 'rock'] ],
  [ 'title' => 'Emotion',
    'tags'  => ['70s', 'pop'] ],
  [ 'title' => 'The River'],
];

foreach($songs as $song) {
  printf("%s\n", json_encode($song));
}
