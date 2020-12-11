import songs from "./songs-data.js";

const unique = array => [... new Set(array)];
const merge  = (array1, array2) => [...array1, ...array2];
const mergeUnique = (a1, a2) => a2 ? unique(merge(a1,a2)) : a1;
const mapUnique = (allTags, songs) => songs.map(song => 
  allTags = mergeUnique(allTags, song.tags)
);

const allTags = mapUnique([], songs).pop();
console.log(allTags);

