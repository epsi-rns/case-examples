import songs from "./songs-data.js";

const unique  = array => [... new Set(array)];
const getTags = songs => songs.map(song => song.tags || []);
const flatten = array => array.reduce((a,b) => a.concat(b));

const allTags = unique(flatten(getTags(songs)));
console.log(allTags);
