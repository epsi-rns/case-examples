interface StringArray {
  [index: number]: string;
  [Symbol.iterator]() : IterableIterator<string>;
}

interface Song{
  title: string;
  tags?: StringArray;
}

const unique = (array: StringArray): StringArray => [... new Set(array)];

const song: Song = {
  title: "Cantaloupe Island", 
  tags: ["rock", "jazz", "rock", "pop", "pop"]
};

const songTags: StringArray = unique(song.tags!);
console.log(songTags);
