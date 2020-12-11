const unique   = array => [... new Set(array)];
const exist    = array => array.filter(a => a !== undefined)

const songs  = [
  { title: "Cantaloupe Island",          tags: ["60s", "jazz"] },
  { title: "Let it Be",                  tags: ["60s", "rock"] },
  { title: "Knockin' on Heaven's Door",  tags: ["70s", "rock"] },
  { title: "Emotion",                    tags: ["70s", "pop"] },
  { title: "The River" }
];

const allTags = unique(exist(songs.flatMap(song => song.tags)));
console.log(allTags);

