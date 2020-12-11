interface Song{
  title: string;
  tags?: Array<string>;
}

const song: Song = { title: "Cantaloupe Island", tags: ["60s", "jazz"] };

console.log(song);
