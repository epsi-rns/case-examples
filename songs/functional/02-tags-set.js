const tags = ["rock", "jazz", "rock", "pop", "pop"];

// using set feature to collect tag names
let tagSet = new Set();

for (const tag of tags) {
  tagSet.add(tag);
}

console.log(tagSet);

// normalize to array
const allTags = [...tagSet];

console.log(allTags);
