const songs  = [
  { title: "Cantaloupe Island",          tags: ["60s", "jazz"] },
  { title: "Let it Be",                  tags: ["60s", "rock"] },
  { title: "Knockin' on Heaven's Door",  tags: ["70s", "rock"] },
  { title: "Emotion",                    tags: ["70s", "pop"] },
  { title: "The River" }
];

let tagSet = new Set();

// using set feature to collect tag names
songs.forEach(function(song) {
  if( "tags" in song ) {   
    let tags = song.tags;
    console.log(tags);

    for (const tag of tags) {
      tagSet.add(tag);
    }
  }
});

console.log(tagSet);

// normalize to array
let alltags = [...tagSet];

console.log(alltags);
