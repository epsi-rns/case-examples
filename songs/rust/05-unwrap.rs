mod my_songs;

fn main() {
    let songs: Vec<my_songs::Song> = my_songs::get_songs();

    let tags_s: Vec<Vec<&str>> = songs
        .into_iter()
        .map(|song| song.tags)
        .filter(|tags| tags.is_some())
        .map(|tags| tags.unwrap())
        .collect();
    
    for tags in tags_s.iter() {
        println!("{:?}", tags);
    }
}
