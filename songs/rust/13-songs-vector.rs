mod ma_songs;

fn main() {
    let songs: Vec<ma_songs::Song> =
        ma_songs::get_songs();

    for song in songs.iter() {
        println!("{}", song)
    }
}
