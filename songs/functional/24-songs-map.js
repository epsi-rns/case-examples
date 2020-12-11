// using map without returning value is considered anti pattern.

const addTags      = (tagSet, tags) => tags.map(tag => tagSet.add(tag));
const addSongTags  = (tagSet, song) => 
        song.tags? addTags(tagSet, song.tags) : undefined;
const addSongsTags = (tagSet, songs) =>
        songs.map(song => addSongTags(tagSet, song));

const songs  = [
  { title: "Cantaloupe Island",          tags: ["60s", "jazz"] },
  { title: "Let it Be",                  tags: ["60s", "rock"] },
  { title: "Knockin' on Heaven's Door",  tags: ["70s", "rock"] },
  { title: "Emotion",                    tags: ["70s", "pop"] },
  { title: "The River" }
];

// using set feature to collect tag names
let tagSet = new Set();
addSongsTags(tagSet, songs);
console.log(tagSet);

// normalize to array
let allTags = [...tagSet];

console.log(allTags);
