#!/usr/bin/env ion

let song:hmap[str] = [ \
  title='Cantaloupe Island' \
  tags=["60s" "jazz"] \
]

echo @song
echo @song[title]
echo @song[tags]

let tags = @song[tags]
let tags = [ @split($tags) ]
echo @tags[1]
