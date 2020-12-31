mod my_songs;

use std::collections::HashSet;
use std::iter::FromIterator;

fn unique(tags: Vec<&str>) -> Vec<&str> {
    let hashtags: HashSet<&str> =
        HashSet::from_iter(tags.iter().cloned());

    Vec::from_iter(hashtags.iter().cloned())
}

fn main() {
    let songs: Vec<my_songs::Song> =
        my_songs::get_songs();

    let tags: Vec<&str> = songs
        .into_iter()
        .filter_map(|song| song.tags)
        .flat_map(|tag_s| tag_s)
        .collect();
       
    println!("{:?}", unique(tags));
}

