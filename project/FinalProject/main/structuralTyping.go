package main

import "fmt"

type Apple struct { seed int }
type Banana struct { seed int }

func main() {
	var a Apple
	a = Banana{1}
	fmt.Println(a.seed)
}
