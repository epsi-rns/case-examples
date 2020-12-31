use std::fmt;

struct Song<'lt> {
	title: &'lt str,
	tags : Vec<&'lt str>
}

impl<'lt> fmt::Display for Song<'lt> {
    fn fmt(&self, f: &mut fmt::Formatter)-> fmt::Result {
        write!(f, "({}, {:?})", self.title, self.tags)
    }
}

fn main() {
    let songs: [Song; 5] = [
        Song {  title: "Cantaloupe Island",
                tags: vec!["60s", "jazz"]},
        Song {  title: "Let It Be",
                tags: vec!["60s", "rock"]},
        Song {  title: "Knockin' on Heaven's Door",
                tags: vec!["70s", "rock"]},
        Song {  title: "Emotion",
                tags: vec!["70s", "pop"]},
        Song {  title: "The River", tags: vec![] }
    ];

    for song in songs.iter() {
        println!("{}", song);
    }
}
