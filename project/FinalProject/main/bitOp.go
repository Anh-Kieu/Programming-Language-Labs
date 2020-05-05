package main

import "fmt"

func main() {
	fmt.Println(001 & 110) // bitwise and
	fmt.Println(111 | 010) // bitwise or
	fmt.Println(110 ^ 100) // bitwise xor
	fmt.Println(^1010) // bitwise not
	fmt.Println( 1000 << 2) // bitwise left shift
	fmt.Println(1000 >> 2) // bitwise right shift
}
