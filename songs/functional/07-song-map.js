const unique = array => [... new Set(array)];
const merge  = (array1, array2) => [...array1, ...array2];
const mergeUnique = (a1, a2) => a2 ? unique(merge(a1,a2)) : a1;
const mapUnique = (allTags, songs) => songs.map(song => 
  allTags = mergeUnique(allTags, song.tags)
);

const songs  = [
  { title: "Cantaloupe Island",          tags: ["60s", "jazz"] },
  { title: "Let it Be",                  tags: ["60s", "rock"] },
  { title: "Knockin' on Heaven's Door",  tags: ["70s", "rock"] },
  { title: "Emotion",                    tags: ["70s", "pop"] },
  { title: "The River" }
];

allTags = mapUnique([], songs).pop(); // no assigmnet!
console.log(allTags);

