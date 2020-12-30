package main

import (
	"example.com/mysongs"
	"fmt"
)

func main() {
	for _, song := range mysongs.GetSongs() {
		fmt.Println(song)
	}
}
