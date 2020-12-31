struct Song<'lt> {
	title: &'lt str,
	tags : Vec<&'lt str>
}

fn main() {
    let song = Song {
		title: "Cantaloupe Island",
        tags: vec!["60s", "jazz"]
    };

    println!("| {} - {:?}|", &song.title, &song.tags);
}
