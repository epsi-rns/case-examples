import songs from "./songs-data.js";

const
  unique = array => [... new Set(array)],
  merge  = (array1, array2) => [...array1, ...array2],
  mergeUnique = (a1, a2) => unique(merge(a1,a2));

// const mergeUnique = (a1, a2) => [... new Set([...a1, ...a2])];

let allTags = [];

songs.forEach(song => {
  if(song.tags) {
    allTags = mergeUnique(allTags, song.tags)
    console.log(allTags);
  }
});
