interface StringArray {
  [index: number]: string;
  [Symbol.iterator]() : IterableIterator<string>;
}

interface Song{
  title: string;
  tags?: Array<string>;
}

const unique = (array: Array<string>): Array<string> => [... new Set(array)];

const song1: Song = {
  title: "Cantaloupe Island", 
  tags: ["rock", "jazz", "rock", "pop", "pop"]
};

const song2: Song = { title: "The River" };

const song1Tags: Array<string> = unique(song1.tags!);
console.log(song1Tags);

const song2Tags: Array<string> = unique(song2.tags!);
console.log(song2Tags);
