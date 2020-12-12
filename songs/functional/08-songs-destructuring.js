import songs from "./songs-data.js";

const unique = array => [... new Set(array)];
const merge  = (array1, array2) => [...array1, ...array2];

let allTags = [];

for (const { title, tags = [] } of songs) {
  allTags = unique(merge(allTags, tags));
  console.log(allTags);
}
