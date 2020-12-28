import songs from "./songs-data.js";

const unique = array => [... new Set(array)];

const allTags = unique(songs.flatMap(song => song.tags? song.tags: []))
console.log(allTags );


