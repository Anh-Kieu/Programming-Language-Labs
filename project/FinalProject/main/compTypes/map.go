package main

import "fmt"

func main() {
	me := make(map[string]bool)
	me["stress"] = true
	me["sleep"] = false
	fmt.Println("I am stressed", me["stress"])
	fmt.Println("I have enough sleep", me["sleep"])
}
