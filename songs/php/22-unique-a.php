<?php
$tags = ['60s', 'jazz', '60s', 'rock',
         '70s', 'rock', '70s', 'pop'];

function exclude($val, $tags) {
  return array_values(
    array_filter(
      $tags,
      function ($tag) use ($val) {
        return $tag != $val; 
    }));
}

function unique($tags) {
  if(sizeof($tags) <= 1) return $tags;
  else {
    $head = array_shift($tags);
    return array_merge(
      [$head],
      unique(exclude($head, $tags))
    );
  }
}

printf("%s\n", json_encode(unique($tags)));
