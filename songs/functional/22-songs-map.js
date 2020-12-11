import songs from "./songs-data.js";

// using map without returning value is considered anti pattern.
const addTags = (tagSet, tags) => tags.map(tag => tagSet.add(tag));

let tagSet = new Set();

// using set feature to collect tag names
songs.forEach(song => {
  if(song.tags) {
    let tags = song.tags;
    console.log(tags);

    addTags(tagSet, song.tags);
  }
});

console.log(tagSet);

// normalize to array
let allTags = [...tagSet];

console.log(allTags);
