package main

import "fmt"

func main() {
	i := 42
	var p *int
	fmt.Println("Initial value of pointer: ", p)
	p = &i
	fmt.Println("Before change i =", i)
	*p = 21
	fmt.Println("After change pointer: i =", i, "Pointer value:", p)
}
