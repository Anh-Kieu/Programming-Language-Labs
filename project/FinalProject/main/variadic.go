package main

import "fmt"

func mul(nums ...int) int {
	// This function will take in any number of int argument
	result := 1
	for _, num := range nums {
		result *= num
	}
	return result
}

func main() {
	fmt.Println(mul(1,2,3))
	fmt.Println(mul(1))
}
