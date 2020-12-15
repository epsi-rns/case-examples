interface Song{
  title: string;
  tags?: Array<string>;
}

const unique = (array: Array<string>): Array<string> => [... new Set(array)];

const song: Song = {
  title: "Cantaloupe Island", 
  tags: ["rock", "jazz", "rock", "pop", "pop"]
};

const songTags: Array<string> = unique(song.tags!);
console.log(songTags);
