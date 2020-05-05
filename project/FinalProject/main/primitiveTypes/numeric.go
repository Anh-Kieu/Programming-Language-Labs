package main

import (
	"fmt"
	"unsafe"
)

func main() {
	// Signed integer
	var i int // signed integer default to be 8 bytes
	// there are also
	// int8 8-bit integers (-128 to 127)
	// int16 (-32768 to 32767)
	// int32 (-2147483648 to 2147483647)
	// int64 (-9223372036854775808 to 9223372036854775807)
	fmt.Printf("Signed default val: %d, Size: %d\n", i, unsafe.Sizeof(i))

	// Unsigned integer
	var u uint // unsigned integer default to be 8 bytes, default value 0
	// there are also
	// uint8
	// uint16
	// uint32
	// uint64
	fmt.Printf("Unsigned default val: %d, Size: %d\n", u, unsafe.Sizeof(u))

	// Float
	var fl32 float32 // IEEE-754 32-bit floating-point numbers
	// there is also float64 IEEE-754 64-bit floating-point numbers
	fmt.Printf("Unsigned default val: %f, Size: %d\n", fl32, unsafe.Sizeof(fl32))

	// Complex numeric
	var c1 complex64 // 64 bits, complex numbers with float32 real and imaginary parts
	var c2 complex128 // 128 bits, complex numbers with float64 real and imaginary parts
	c2 = 1.0 - 10i
	fmt.Printf("Complex default val: %g, Size: %d\n", c1, unsafe.Sizeof(c1))
	fmt.Printf("%g, Size: %d\n", c2, unsafe.Sizeof(c2))
}
