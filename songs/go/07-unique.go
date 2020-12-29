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

func unique(tags []string) []string {
    keys := make(map[string]bool)
    uniq := []string{}	

    for _, tag := range tags {
		_, value := keys[tag];
        if !value {
            keys[tag] = true
            uniq = append(uniq, tag)
        }
    }

    return uniq
}

func main() {
	var tags []string
	tags = flatten(mysongs.Songs())
	tags = unique(tags)
	fmt.Println(tags)
}
