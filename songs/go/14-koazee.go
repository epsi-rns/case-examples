package main

import (
	"fmt"
	"example.com/mysongs"
	"github.com/wesovilabs/koazee"
)

var tags = []string{
	"rock", "jazz", "rock", "pop", "pop"}

func main() {
    var stream = koazee.StreamOf(mysongs.GetSongs())

	stream = stream.Map(
		func(song mysongs.Song) []string {
			return song.Tags
		}).Filter(
		func(tags []string) bool {
			return tags != nil
		}).Do()

	var flatten = stream.Reduce(
		func(acc, tags []string) []string {
			return append(acc, tags...)
		})

	stream = koazee.StreamOf(flatten.Val()).
		RemoveDuplicates()

	fmt.Printf("stream : %v\n", stream.Out().Val())
}
