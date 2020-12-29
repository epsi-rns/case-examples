package main

import "fmt"

func exclude(value string, tags []string) []string {
	var newTags []string

	for _, tag := range tags{
		if tag != value {
			newTags = append(newTags, tag)
		}
	}

	return newTags
}

func main() {
	var tags = []string{
		"rock", "jazz", "rock", "pop", "pop"}
	
	fmt.Println(exclude("rock", tags))
}
