pub fn unique<T: Clone + PartialEq>(
    tags: Vec<T>
) -> Vec<T> {
    if tags.len() <= 1 {
        tags
    } else {
        let head: T = tags[0].clone();
        let tail: Vec<T> = tags[1..].to_vec();

        let mut excluded: Vec<T> = Vec::new();

        for tag in tail.into_iter() {
            if tag != head {
                excluded.push(tag); 
            }
        }    

        let mut new_tail = unique(excluded);

        new_tail.insert(0, head);
        new_tail
    }
}
