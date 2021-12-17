<?php
class MySong {
  public function __construct(
    public String $title = "",
    public Array  $tags  = []
  ) {}
}

$songs = [
  new MySong(
    'Cantaloupe Island', ['60s', 'jazz']),
  new MySong('Let It Be', ['60s', 'rock']),
  new MySong(
    'Knockin\' on Heaven\'s Door',
    ['70s', 'rock']),
  new MySong('Emotion', ['70s', 'pop']),
  new MySong('The River'),
];
