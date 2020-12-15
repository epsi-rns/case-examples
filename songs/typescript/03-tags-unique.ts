interface StringArray {
  [index: number]: string;
  [Symbol.iterator]() : IterableIterator<string>;
}

const unique = (array: StringArray): StringArray => [... new Set(array)];
const tags: StringArray = ["rock", "jazz", "rock", "pop", "pop"];

const allTags: StringArray = unique(tags);
console.log(allTags);
