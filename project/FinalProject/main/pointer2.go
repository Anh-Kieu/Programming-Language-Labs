package main

import "fmt"

func main() {
	var x int = 2
	var y int = 2
	p := &x
	//var p1 = p + 1
	p1 := &x
	p2 := &y
	fmt.Println(p == p1)
	fmt.Println(p == p2)
}