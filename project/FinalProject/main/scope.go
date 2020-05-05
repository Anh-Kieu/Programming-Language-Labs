package main

import "fmt"

var b int = 2

func foo(a int) int {
	return a+b
}

func main() {
	a := 12
	b := 10
	fmt.Println(b)
	fmt.Print(foo(a))
}