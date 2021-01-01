fn exclude<'lt>(
    value: &'lt str, tags: Vec<&'lt str>
) -> Vec<&'lt str> {
    let mut new_tags: Vec<&str> = Vec::new();

    for tag in tags.iter() {
        if tag != &value {
            new_tags.push(tag); 
        }
    }

    new_tags
}

fn main() {
    let tags: Vec<&str> =
        vec!["rock", "jazz", "rock", "pop", "pop"];

    println!("{:?}", exclude("rock", tags));
}
