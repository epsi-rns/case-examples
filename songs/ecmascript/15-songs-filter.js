import songs from "./songs-data.js";

const allTags = songs
  .filter(song => song.tags)
  .flatMap(song => song.tags)
  .filter((v, i, a) => a.indexOf(v) == i)
;
console.log(allTags );


