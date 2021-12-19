<?php
$tags = ['60s', 'jazz', '60s', 'rock',
         '70s', 'rock', '70s', 'pop'];

function unique($tags) {
  if(sizeof($tags) <= 1) return $tags;
  else {
    $head = array_shift($tags);
    $exclude = array_values(
      array_diff($tags, [$head]));
    return array_merge(
      [$head], unique($exclude)
    );
  }
}

printf("%s\n", json_encode(unique($tags)));
