import songs from "./songs-data.js";

// using map without returning value is considered anti pattern.

const
  addTags     = (tagSet, tags) => tags.map(tag => tagSet.add(tag)),
  addSongTags = (tagSet, song) => 
        song.tags? addTags(tagSet, song.tags) : undefined;

let tagSet = new Set();

// using set feature to collect tag names
songs.forEach(song => {
  addSongTags(tagSet, song);
});

// normalize to array
let allTags = [...tagSet];

console.log(allTags);
