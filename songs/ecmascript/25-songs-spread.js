import songs from "./songs-data.js";

// using map without returning value is considered anti pattern.

const
  addTags      = (tagSet, tags) => tags.map(tag => tagSet.add(tag)),
  addSongTags  = (tagSet, song) => 
        song.tags? addTags(tagSet, song.tags) : undefined,
  addSongsTags = (tagSet, songs) =>
        songs.map(song => addSongTags(tagSet, song)),
  setToArray   = tagSet => [...tagSet];

// using set feature to collect tag names
let tagSet = new Set();
addSongsTags(tagSet, songs); // no assignment
let allTags = setToArray(tagSet);

console.log(allTags);
