use std::fmt;

pub struct Song {
    pub title: String,
    pub tags : Option<Vec<String>>
}

fn to_strings(vec_str: Vec<&str>) -> Option<Vec<String>> {
    let new_strings: Vec<String>;

    new_strings = vec_str
        .into_iter()
        .map(|tag| tag.to_string())
        .collect();

    Some(new_strings)
}

impl fmt::Display for Song {
    fn fmt(&self, f: &mut fmt::Formatter)-> fmt::Result {
        write!(f, "({}, {:?})", self.title, self.tags)
    }
}

pub fn get_songs() -> Vec<Song> {
    vec![
        Song {  title: "Cantaloupe Island".to_string(),
                tags: to_strings(vec!["60s", "jazz"])},
        Song {  title: "Let It Be".to_string(),
                tags: to_strings(vec!["60s", "rock"])},
        Song {  title: "Knockin' on Heaven's Door".to_string(),
                tags: to_strings(vec!["70s", "rock"])},
        Song {  title: "Emotion".to_string(),
                tags: to_strings(vec!["70s", "pop"])},
        Song {  title: "The River".to_string(), tags: None }
    ]
}
