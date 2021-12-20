#!/usr/bin/env fish

set songs \
  "Cantaloupe Island;60s,jazz" \
  "Let It Be;60s,rock" \
  "Knockin' on Heaven's Door;70s,rock" \
  "Emotion;70s,pop" \
  "The River"

string join \n\b $songs
