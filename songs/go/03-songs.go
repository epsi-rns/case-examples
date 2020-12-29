package main

import "fmt"

type Song struct {
	Title string
	Tags  []string
}

func main() {
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

	for _, song := range songs{
		fmt.Println(song)
	}
}
