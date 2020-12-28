import songs from "./songs-data.js";

const
  unique  = array => [... new Set(array)],
  getTags = songs => songs.map(song => song.tags || []),
  flatten = array => array.reduce((a,b) => a.concat(b));

const allTags = getTags(songs);
console.log(allTags);
