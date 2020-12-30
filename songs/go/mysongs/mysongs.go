package mysongs

type Song struct {
	Title string
	Tags  []string
}

type Songs []Song

func GetSongs() Songs{
	return []Song{
		Song{"Cantaloupe Island",
			[]string{"60s", "jazz"}},
		Song{"Let It Be",
			[]string{"60s", "rock"}},
		Song{"Knockin' on Heaven's Door",
			[]string{"70s", "rock"}},
		Song{"Emotion",
			[]string{"70s", "pop"}},
		Song{"The River",
			nil},
	}
}

func (songs Songs) FlattenTags() []string {
	var tags []string

	for _, song := range songs {
		if song.Tags != nil {
			for _, tag := range song.Tags {
				tags = append(tags, tag)
			}
		}
	}

	return tags
}
