package main

import (
	"fmt"
	"example.com/mysongs"
)

func mapAndFilter(songs []mysongs.Song) [][]string {
	var tagss [][]string

	for _, song := range songs{
		if song.Tags != nil {
			tagss = append(tagss, song.Tags)
		}
	}

	return tagss
}

func main() {
	tagss := mapAndFilter(mysongs.Songs())
	fmt.Println(tagss)
}


