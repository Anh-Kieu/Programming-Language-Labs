package main

import "fmt"

func bar() int {
	fmt.Println("Strict! Cuz I am printed!")
	return 2
}

func boo(c int) int{
	return 2
}

func main() {
	fmt.Println(boo(bar()))
}
