<?php
class MySong {
  public function __construct(
    public String $title = "",
    public Array  $tags  = []
  ) {}
}

$song = new MySong(
  'Cantaloupe Island',
  ['60s', 'jazz']
);

var_export($song);

