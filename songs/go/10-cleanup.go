package main

import (
	"example.com/mysongs"
	"example.com/myutils"
	"fmt"
)

func main() {
	var tags []string
	tags = mysongs.GetSongs().FlattenTags()
	tags = myutils.Unique(tags)
	fmt.Println(tags)
}
