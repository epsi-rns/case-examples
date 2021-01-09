mod ma_songs;

use std::collections::HashSet;
use std::iter::FromIterator;

fn unique(tags: Vec<String>) -> Vec<String> {
    let hashtags: HashSet<String> =
        HashSet::from_iter(tags.iter().cloned());

    Vec::from_iter(hashtags.iter().cloned())
}

fn main() {
    let songs: Vec<ma_songs::Song> =
        ma_songs::get_songs();

    let tags: Vec<String> = songs
        .into_iter()
        .filter_map(|song| song.tags)
        .flat_map(|tag_s| tag_s)
        .collect();

    println!("{:?}", unique(tags))
}
