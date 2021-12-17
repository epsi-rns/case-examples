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

$tags = exclude('rock', $tags);
printf("%s\n", json_encode($tags));
