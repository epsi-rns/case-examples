package mysongs

type Song struct {
	Title string
	Tags  []string
}

func Songs() ([]Song) {
	songs := []Song{
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

	return songs
}
