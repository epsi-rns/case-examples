module Songs = {
  type tl_tags  = list(string)
  type tl_song  = { title: string, ltags: option(tl_tags) }
  type tl_songs = list(tl_song) 

  let lsongs: tl_songs = [
    { title : "Cantaloupe Island",
      ltags : Some(["60s", "jazz"])
    },
    { title : "Let it Be",
      ltags : Some(["60s", "rock"])
    },
    { title : "Knockin' on Heaven's Door",
      ltags : Some(["70s", "rock"])
    },
    { title : "Emotion",
      ltags : Some(["70s", "pop"])
    },
    { title : "The River",
      ltags : None
    }
  ]
}
