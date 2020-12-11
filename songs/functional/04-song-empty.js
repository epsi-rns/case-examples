const unique = array => [... new Set(array)];

const song1 = {
  title: "Cantaloupe Island", 
  tags: ["rock", "jazz", "rock", "pop", "pop"]
};

const song2 = { title: "The River" };

const song1Tags = unique(song1.tags);
console.log(song1Tags);

const song2Tags = unique(song2.tags);
console.log(song2Tags);
