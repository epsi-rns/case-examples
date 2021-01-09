use std::fmt;

struct Song {
    title: String,
    tags : Vec<String>
}

fn to_strings(vec_str: Vec<&str>) -> Vec<String> {
    let new_strings: Vec<String>;

    new_strings = vec_str
        .into_iter()
        .map(|tag| tag.to_string())
        .collect();

    new_strings
}

impl fmt::Display for Song {
    fn fmt(&self, f: &mut fmt::Formatter)-> fmt::Result {
        write!(f, "({}, {:?})", self.title, self.tags)
    }
}

fn main() {
    let song = Song {
        title: "Cantaloupe Island".to_string(),
        tags: to_strings(vec!["60s", "jazz"])
    };

    println!("{}", &song);
}
