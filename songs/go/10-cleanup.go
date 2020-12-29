package main

import (
	"fmt"
	"example.com/mysongs"
	"example.com/myutils"
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
	var tags []string
	tags = flatten(mysongs.Songs())
	tags = myutils.Unique(tags)
	fmt.Println(tags)
}
