package main

import "fmt"

type Song struct {
	Title string
	Tags  []string
}

func main() {
	var song = Song{"Cantaloupe Island",
		[]string{"60s", "jazz"}}

	fmt.Println(song)
}
