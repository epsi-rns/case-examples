const unique = array => [... new Set(array)];

const songs  = [
  { title: "Cantaloupe Island",          tags: ["60s", "jazz"] },
  { title: "Let it Be",                  tags: ["60s", "rock"] },
  { title: "Knockin' on Heaven's Door",  tags: ["70s", "rock"] },
  { title: "Emotion",                    tags: ["70s", "pop"] },
  { title: "The River" }
];

const allTags = unique(songs
  .filter(song => song.tags)
  .flatMap(song => song.tags)
);
console.log(allTags );


