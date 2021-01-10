mod ma_songs;
use ma_songs::{ Song, to_strings };
mod my_utils;

fn main() {
    let mut songs: Vec<Song> = vec![];

    songs.push(Song {
        title: "Cantaloupe Island".to_string(),
        tags: to_strings(vec!["60s", "jazz"])
    });

    songs.push(Song {
        title: "Let It Be".to_string(),
        tags: to_strings(vec!["60s", "rock"])
    });

    let tags: Vec<String> = songs
        .into_iter()
        .filter_map(|song| song.tags)
        .flat_map(|tag_s| tag_s)
        .collect();

    println!("{:?}", my_utils::unique(tags))
}
