package main

import "fmt"

func main() {
	var a int = 12
	var b float32 = float32(a)
	fmt.Println(b)
	b = 14.3
	a = int(b)
	fmt.Println(a)

	var s string = "12"
	b = float32(s)
	fmt.Println(b)
	var d string
	d = string(b)
	fmt.Println(d)
}
