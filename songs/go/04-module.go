package main

import (
	"example.com/mysongs"
	"fmt"
)

func main() {
	for _, song := range mysongs.Songs() {
		fmt.Println(song)
	}
}
