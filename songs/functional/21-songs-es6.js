import songs from "./songs-data.js";

let tagSet = new Set();

// using set feature to collect tag names
songs.forEach(song => {
  if( "tags" in song ) {
    let tags = song.tags;
    console.log(tags);

    for (const tag of tags) {
      tagSet.add(tag);
    }
  }
});

console.log(tagSet);

// normalize to array
let allTags = [...tagSet];

console.log(allTags);
