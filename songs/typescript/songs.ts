interface Song{
  title: string;
  tags?: Array<string>;
}

const songs: Array<Song>  = [
  { title: "Cantaloupe Island",          tags: ["60s", "jazz"] },
  { title: "Let it Be",                  tags: ["60s", "rock"] },
  { title: "Knockin' on Heaven's Door",  tags: ["70s", "rock"] },
  { title: "Emotion",                    tags: ["70s", "pop"] },
  { title: "The River" }
];

let tagSet: Set<string> = new Set();

// using set feature to collect tag names
songs.forEach(song => {
  if( song.tags ) {
    let tags: Array<string> = song.tags;
    console.log(tags);

    for (const tag of tags) {
      tagSet.add(tag);
    }
  }
});

console.log(tagSet);

// normalize to array
let alltags: Array<string> = [...tagSet];

console.log(alltags);
