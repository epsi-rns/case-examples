mod my_songs;

fn main() {
    let songs: Vec<my_songs::Song> = my_songs::get_songs();

    let tags_os: Vec<Option<Vec<&str>>> = songs
        .into_iter()
        .map(|song| song.tags)
        .filter(|tags| tags.is_some())
        .collect();
    
    for tags_o in tags_os.iter() {
        println!("{:?}", tags_o);
    }
}
