import { Song, songs } from "./songs-data.ts";

type   Unique  = (array: Array<string>) => Array<string>;
const  unique  : Unique = (array) => [... new Set(array)];

type  PickTags = (song: Song) => Array<string>;
const pickTags : PickTags = (song) => song.tags!

const allTags: Array<string> = unique(songs
  .filter(  pickTags )
  .flatMap( pickTags )
);
console.log(allTags );
