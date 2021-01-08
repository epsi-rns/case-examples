package main

import (
	"example.com/mysongs"
	"fmt"
)

func walk(message chan string, quit chan int) {
	var tags []string
	var tag string

	for {
		select {
		case tag = <-message:
			tags = append(tags, tag)
		case <-quit:
			fmt.Println(tags)
			return
		}
	}
}

func flatten(message chan string, quit chan int) {
	songs := mysongs.GetSongs()

	for _, song := range songs {
		if song.Tags != nil {
			for _, tag := range song.Tags {
				message <- tag
			}
		}
	}

	quit <- 0
}

func main() {
	message := make(chan string)
	quit := make(chan int)

	go flatten(message, quit)
	walk(message, quit)
}
