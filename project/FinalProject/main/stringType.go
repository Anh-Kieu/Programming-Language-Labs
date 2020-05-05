package main

import "fmt"

func main() {
	var a string = "a"
	var b string = "b"
	var c string = a + b
	//var d string = 2 * a -> Give an error
	fmt.Println(c)
}
