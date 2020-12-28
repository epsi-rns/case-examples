const unique = array => [... new Set(array)];
const tags = ["rock", "jazz", "rock", "pop", "pop"];

const allTags = unique(tags);
console.log(allTags);
