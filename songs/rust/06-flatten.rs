mod my_songs;

fn main() {
    let songs: Vec<my_songs::Song> =
        my_songs::get_songs();

    let tags: Vec<&str> = songs
        .into_iter()
        .filter_map(|song| song.tags)
        .flat_map(|tag_s| tag_s)
        .collect();
    
    println!("{:?}", tags);
}
