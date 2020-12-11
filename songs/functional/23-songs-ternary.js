// using map without returning value is considered anti pattern.

const addTags     = (tagSet, tags) => tags.map(tag => tagSet.add(tag));
const addSongTags = (tagSet, song) => 
        song.tags? addTags(tagSet, song.tags) : undefined;

const songs  = [
  { title: "Cantaloupe Island",          tags: ["60s", "jazz"] },
  { title: "Let it Be",                  tags: ["60s", "rock"] },
  { title: "Knockin' on Heaven's Door",  tags: ["70s", "rock"] },
  { title: "Emotion",                    tags: ["70s", "pop"] },
  { title: "The River" }
];

let tagSet = new Set();

// using set feature to collect tag names
songs.forEach(song => {
  addSongTags(tagSet, song);
});

// normalize to array
let allTags = [...tagSet];

console.log(allTags);
