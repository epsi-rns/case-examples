import songs from "./songs-data.js";

const
  unique   = array => [... new Set(array)],
  exist    = array => array.filter(a => a !== undefined);

const allTags  = unique(exist(songs.flatMap(song => song.tags)));
console.log(allTags);

