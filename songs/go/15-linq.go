package main

import "fmt"
import . "example.com/mysongs"
import . "github.com/ahmetb/go-linq/v3"

func main() {
	var tags  []string

	From(GetSongs()).
	WhereT(func(song Song) bool {
		return song.Tags != nil
	}).SelectT(func(song Song) []string {
		return song.Tags
	}).SelectMany(func(tag interface{}) Query {
		return From(tag)
	}).Distinct().ToSlice(&tags)

	fmt.Println(tags)
}
