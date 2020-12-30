package main

import (
	"example.com/mysongs"
	"fmt"
)

func flatten(songs []mysongs.Song) []string {
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

func main() {
	tags := flatten(mysongs.GetSongs())
	fmt.Println(tags)
}
