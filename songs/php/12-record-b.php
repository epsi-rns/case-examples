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

printf("%s: [%s]\n",
  $song->title,
  join(', ', $song->tags));
