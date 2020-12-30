package main

import (
	"example.com/mysongs"
	"fmt"
)

func unique(tags []string) []string {
	keys := make(map[string]bool)
	uniq := []string{}

	for _, tag := range tags {
		_, value := keys[tag]
		if !value {
			keys[tag] = true
			uniq = append(uniq, tag)
		}
	}

	return uniq
}

func main() {
	var tags []string
	tags = mysongs.GetSongs().FlattenTags()
	tags = unique(tags)
	fmt.Println(tags)
}
