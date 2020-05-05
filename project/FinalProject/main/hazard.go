package main

import "fmt"

func main() {
	var a int
	var p, p1 * int
	p = &a
	p1 = &a
	*p = 4
	*p1 = 5
	fmt.Println(*p)
}
