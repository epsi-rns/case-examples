<?php
require_once(__DIR__.'/MyHelperUnique.php');

$tags = ['60s', 'jazz', '60s', 'rock',
         '70s', 'rock', '70s', 'pop'];

printf("%s\n", json_encode(unique($tags)));
