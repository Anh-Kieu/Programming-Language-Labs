package main

import "fmt"

func Scream(f func(i int) string)  {
	// Function that takes in a function: int -> int
	mood := f(3)
	fmt.Println("AAAAAAA!,", mood)
}

func main() {
	exclaim := func(i int) string {
		if i < 8 {
			return "NEED SLEEP!"
		} else {
			return "REFRESHING!"
		}
	}
	Scream(exclaim)
}
