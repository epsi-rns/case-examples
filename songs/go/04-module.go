package main

import (
	"fmt"
	"example.com/mysongs"
)

func main() {
	for _, song := range mysongs.Songs(){
		fmt.Println(song)
	}
}
