export interface Song{
  readonly title: string;
  readonly tags?: Array<string>;
}

const songs: Array<Song> = [
  { title: "Cantaloupe Island",
    tags : ["60s", "jazz"] },
  { title: "Let it Be",
    tags : ["60s", "rock"] },
  { title: "Knockin' on Heaven's Door",
    tags : ["70s", "rock"] },
  { title: "Emotion",
    tags : ["70s", "pop"] },
  { title: "The River" }
];

export { songs };
