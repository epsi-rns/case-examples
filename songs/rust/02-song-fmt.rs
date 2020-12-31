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
    let song = Song {
		title: "Cantaloupe Island",
        tags: vec!["60s", "jazz"]
    };

    println!("{}", &song);
}
