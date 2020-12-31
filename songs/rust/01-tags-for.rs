fn main() {
    let tags: [&str; 5] =
        ["rock", "jazz", "rock", "pop", "pop"];

    for tag in tags.iter() {
        println!("the value is: {}", tag);
    }
}
