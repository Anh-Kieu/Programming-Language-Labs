package main

import "fmt"

func hello(a int) {	a = a+1 }

func main() {
	var a = 1
	hello(a)
	fmt.Println(a)
}
