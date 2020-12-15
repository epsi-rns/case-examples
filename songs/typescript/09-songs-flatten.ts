import { Song, songs } from "./songs-data";

type GetTags = (array: Array<Song>) => Array<Array<string>>;
type Flatten = (array: Array<Array<string>>) => Array<string>;
type Unique  = (array: Array<string>) => Array<string>;

const getTags : GetTags  = (songs) => songs.map(song => song.tags || []);
const flatten : Flatten  = (array) => array.reduce((a,b) => a.concat(b));
const unique  : Unique   = (array) => [... new Set(array)];

const allTags: Array<string> = unique(flatten(getTags(songs)));
console.log(allTags);
