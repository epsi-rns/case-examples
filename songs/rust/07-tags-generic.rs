fn exclude<T: PartialEq>(
    value: T, tags: Vec<T>
) -> Vec<T> {
    let mut new_tags: Vec<T> = Vec::new();

    for tag in tags.into_iter() {
        if tag != value {
            new_tags.push(tag); 
        }
    }

    new_tags
}

fn unique<T: Clone + PartialEq>(
    tags: Vec<T>
) -> Vec<T> {
    if tags.len() <= 1 {
        tags
    } else {
        let head: T = tags[0].clone();
        let tail: Vec<T> = tags[1..].to_vec();

        let mut new_tail = unique(
            exclude(head.clone(), tail));

        new_tail.insert(0, head);
        new_tail
    }
}

fn main() {
    let tags: Vec<&str> =
        vec!["rock", "jazz", "rock", "pop", "pop"];

    println!("{:?}", unique(tags));
}
