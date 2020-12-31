fn main() {
    let tags: [&str; 5] =
        ["rock", "jazz", "rock", "pop", "pop"];   
    let mut index: usize = 0;

    while index < 5 {
        println!("the value is: {}", tags[index]);
        index += 1;
    }
}
