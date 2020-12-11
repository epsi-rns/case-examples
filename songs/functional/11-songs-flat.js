import songs from "./songs-data.js";

const unique   = array => [... new Set(array)];
const exist    = array => array.filter(a => a !== undefined)
const tagsOnly = songs => songs.map(song => song.tags);

const allTags  = unique(exist(tagsOnly(songs).flat())) ;
console.log(allTags);

