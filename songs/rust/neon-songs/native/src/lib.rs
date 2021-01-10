use neon::register_module;
use neon_serde::export;
use serde_derive::{Deserialize, Serialize};

mod my_utils;

#[derive(Serialize, Deserialize, Debug)]
struct Song {
    title: String,
    tags:  Option<Vec<String>>
}

export! {
    fn passRecords(songs: Vec<Song>) -> String {
        let tags: Vec<String> = songs
            .into_iter()
            .filter_map(|song| song.tags)
            .flat_map(|tag_s| tag_s)
            .collect();

        format!("{:?}", my_utils::unique(tags))
    }
}

