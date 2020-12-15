import { Song, songs } from "./songs-data";

type   Unique = (array: Array<string>) => Array<string>;
const  unique : Unique = (array) => [... new Set(array)];

type PickTags = (song: Song): Array<string>;
const allTags: Array<string> = unique(songs
  .filter(  PickTags => song.tags!)
  .flatMap( PickTags => song.tags!)
);
console.log(allTags );
