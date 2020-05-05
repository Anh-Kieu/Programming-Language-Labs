package main

import (
	"fmt"
	"unsafe"
)

func main() {
	var a,b bool
	a = true
	b = false
	fmt.Print(a,b, unsafe.Sizeof(a)) // Print a b and size of a,
	// Sizeof returns size in bytes, in this case 1 byte
}