use std::fmt;

pub struct Song<'lt> {
    title: &'lt str,
    pub tags : Option<Vec<&'lt str>>
}

impl<'lt> fmt::Display for Song<'lt> {
    fn fmt(&self, f: &mut fmt::Formatter)-> fmt::Result {
        write!(f, "({}, {:?})", self.title, self.tags)
    }
}

pub fn get_songs<'lt>() -> Vec<Song<'lt>> {
    vec![
        Song {  title: "Cantaloupe Island",
                tags: Some(vec!["60s", "jazz"])},
        Song {  title: "Let It Be",
                tags: Some(vec!["60s", "rock"])},
        Song {  title: "Knockin' on Heaven's Door",
                tags: Some(vec!["70s", "rock"])},
        Song {  title: "Emotion",
                tags: Some(vec!["70s", "pop"])},
        Song {  title: "The River", tags: None }
    ]
}
