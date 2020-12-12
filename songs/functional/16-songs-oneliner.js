import songs from "./songs-data.js";
console.log([... new Set(songs.flatMap(song => song.tags || []))]);


