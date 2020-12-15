interface StringArray {
  [index: number]: string;
  [Symbol.iterator]() : IterableIterator<string>;
}

const tags: StringArray = ["rock", "jazz", "rock", "pop", "pop"];

// using set feature to collect tag names
let tagSet: Set<string>  = new Set();
for (const tag of tags) { tagSet.add(tag); }
console.log(tagSet);

// normalize to array
const allTags: StringArray = [...tagSet];
console.log(allTags);

