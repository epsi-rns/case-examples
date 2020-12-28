import { Song, songs } from "./songs-data.ts";

type Unique = (array: Array<string>) => Array<string>;

type Mergable = (
  array1: Array<string>,
  array2: Array<string>
) => Array<string>;

const
  unique      : Unique   = (a)    => [... new Set(a)],
  merge       : Mergable = (a, b) => [...a, ...b],
  mergeUnique : Mergable = (a,b)  => unique(merge(a, b));

let allTags: Array<string> = [];

songs.forEach(song => {
  if(song.tags) {
    allTags = mergeUnique(allTags, song.tags)
    console.log(allTags);
  }
});


