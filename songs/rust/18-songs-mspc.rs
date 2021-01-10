use std::sync::mpsc;
use std::thread;
use mpsc::Sender;
use mpsc::Receiver;

mod ma_songs;
mod my_utils;
use ma_songs::{ Song, get_songs };
use my_utils::{ unique };

fn flatten(tx: Sender<String>) {
    let songs: Vec<Song> = get_songs();

    for song in songs.iter() {
        if let Some(tags) = &song.tags {
            for tag in tags.iter() {
                tx.send(tag.clone()).unwrap();
            }
        }
    }
}

fn walk(rx: Receiver<String>) -> Vec<String> {
    let mut new_tags: Vec<String> = Vec::new();
    for received in rx { new_tags.push(received); }
    new_tags
}

fn main() {
    let (tx, rx) = mpsc::channel();

    thread::spawn(move || flatten(tx));
    let tags: Vec<String> = walk(rx);
    println!("{:?}", unique(tags))
}
