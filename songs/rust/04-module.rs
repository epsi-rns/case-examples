mod my_songs;

fn main() {
    let songs: Vec<my_songs::Song> = my_songs::get_songs();

    for song in songs.iter() {
        println!("{}", song);
    }
}
