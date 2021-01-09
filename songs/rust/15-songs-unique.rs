mod ma_songs;
mod my_utils;

fn main() {
    let songs: Vec<ma_songs::Song> =
        ma_songs::get_songs();

    let tags: Vec<String> = songs
        .into_iter()
        .filter_map(|song| song.tags)
        .flat_map(|tag_s| tag_s)
        .collect();

    println!("{:?}", my_utils::unique(tags))
}
