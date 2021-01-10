mod ma_songs;
use ma_songs::{ Song, get_songs };

fn flatten(
    songs: Vec<Song>
) -> Vec<String> {
    let mut new_tags: Vec<String> = Vec::new();

    for song in songs.iter() {
        if let Some(tags) = &song.tags {
            for tag in tags.iter() {
                new_tags.push(tag.clone());
            }
        }
    }

    new_tags
}

fn main() {
    let songs: Vec<Song>   = get_songs();
    let tags:  Vec<String> = flatten(songs);
    
    println!("{:?}", tags)
}
