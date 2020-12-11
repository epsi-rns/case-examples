import songs from "./songs-data.js";

const unique = array => [... new Set(array)];

const allTags = unique(songs
  .filter(song => song.tags)
  .flatMap(song => song.tags)
);
console.log(allTags );


