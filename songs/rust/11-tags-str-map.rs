fn to_strings(vec_str: Vec<&str>) -> Vec<String> {
    let new_strings: Vec<String>;

    new_strings = vec_str
        .into_iter()
        .map(|tag| tag.to_string())
        .collect();

    new_strings
}

fn main() {
    let tags: Vec<String> = to_strings(
        vec!["rock", "jazz", "rock", "pop", "pop"]);

    println!("{:?}", tags);
}

