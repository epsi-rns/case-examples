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

fn unique<'lt>(
    tags: Vec<&'lt str>
) -> Vec<&'lt str> {
    if tags.len() <= 1 {
        tags
    } else {
        let head = &tags[0];
        let tail = tags[1..].to_vec();

        let mut new_tail = unique(exclude(head, tail));

        new_tail.insert(0, head);
        new_tail
    }
}

fn main() {
    let tags: Vec<&str> =
        vec!["rock", "jazz", "rock", "pop", "pop"];

    println!("{:?}", unique(tags));
}

