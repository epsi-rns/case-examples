package main

import (
	"example.com/mysongs"
	"fmt"
)

func flatten(songs []mysongs.Song, tags *[]string) {
	for _, song := range songs {
		if song.Tags != nil {
			for _, tag := range song.Tags {
				*tags = append(*tags, tag)
			}
		}
	}
}

func main() {
	var tags []string
	flatten(mysongs.GetSongs(), &tags)
	fmt.Println(tags)
}
