package main

import (
	"example.com/mysongs"
	"fmt"
	"sync"
)

func flatten(wg *sync.WaitGroup,
  songs []mysongs.Song, tags *[]string) {
	defer wg.Done()

	for _, song := range songs {
		if song.Tags != nil {
			for _, tag := range song.Tags {
				*tags = append(*tags, tag)
			}
		}
	}
}

func main() {
	wg := &sync.WaitGroup{}
	var tags []string

	wg.Add(1)
	go flatten(wg, mysongs.GetSongs(), &tags)

	wg.Wait()
	fmt.Println(tags)
}
