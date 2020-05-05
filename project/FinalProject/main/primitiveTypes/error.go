package main

import (
	"fmt"
	"unsafe"
)

func main() {
	var a error // Error type, default value to be <nil>, 16 bytes
	fmt.Print(a, unsafe.Sizeof(a))
}
