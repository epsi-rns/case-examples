package main

import "fmt"
import "example.com/mysongs"
import "github.com/thoas/go-funk"

func main() {
	var tags []string

	tags = funk.
	Chain(mysongs.GetSongs()).
	Filter(func(song mysongs.Song) bool {
		return song.Tags != nil
	}).Map(func(song mysongs.Song) []string {
		return song.Tags
	}).FlattenDeep().
	Uniq().
	Value().([]string)

	fmt.Println(tags)
}
