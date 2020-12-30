package main

import "fmt"

func exclude(value string, tags []string) []string {
	var newTags []string

	for _, tag := range tags {
		if tag != value {
			newTags = append(newTags, tag)
		}
	}

	return newTags
}

func unique(tags []string) []string {
	if len(tags) <= 1 {
		return tags
	} else {
		head := tags[0]
		tail := tags[1:len(tags)]

		newHeads := []string{head}
		newTails := unique(exclude(head, tail))

		return append(newHeads, newTails...)
	}
}

func main() {
	var tags = []string{
		"rock", "jazz", "rock", "pop", "pop"}

	fmt.Println(unique(tags))
}
