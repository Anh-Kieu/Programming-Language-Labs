package main

import "fmt"

func truth() bool{
	fmt.Println("TRUTH")
	return true
}

func lies() bool{
	fmt.Println("LIES")
	return false
}

func main() {
	if truth() || lies() {
		fmt.Println("HI")
	}
	if lies() && lies() {
		fmt.Println("HELLO")
	}
}
