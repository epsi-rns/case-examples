import songs from "./songs-data.js";

// using map without returning value is considered anti pattern.

const addTags      = (tagSet, tags) => tags.map(tag => tagSet.add(tag));
const addSongTags  = (tagSet, song) => 
        song.tags? addTags(tagSet, song.tags) : undefined;
const addSongsTags = (tagSet, songs) =>
        songs.map(song => addSongTags(tagSet, song));

// using set feature to collect tag names
let tagSet = new Set();
addSongsTags(tagSet, songs);
console.log(tagSet);

// normalize to array
let allTags = [...tagSet];

console.log(allTags);
