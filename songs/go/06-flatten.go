package main

import (
	"fmt"
	"example.com/mysongs"
)

func flatten(songs []mysongs.Song) []string {
	var tags []string

	for _, song := range songs{
		if song.Tags != nil {
			for _, tag := range song.Tags{
				tags = append(tags, tag)
			}
		}
	}

	return tags
}

func main() {
	tags := flatten(mysongs.Songs())
	fmt.Println(tags)
}
