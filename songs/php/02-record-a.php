<?php
$song = [ 'title' => 'Cantaloupe Island',
         'tags'  => ['60s', 'jazz'] ];

printf("%s: [%s]\n",
  $song['title'],
  join(', ', $song['tags']));
