package main

import (
	"example.com/mysongs"
	"fmt"
)

func mapAndFilter(songs []mysongs.Song) [][]string {
	var tagss [][]string

	for _, song := range songs {
		if song.Tags != nil {
			tagss = append(tagss, song.Tags)
		}
	}

	return tagss
}

func main() {
	tagss := mapAndFilter(mysongs.GetSongs())
	fmt.Println(tagss)
}
