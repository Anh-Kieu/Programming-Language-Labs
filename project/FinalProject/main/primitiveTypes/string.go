package main

import "fmt"

func main() {
	var a,b,c,d string
	a = "Hello" // normal string
	b = "" // empty string
	c = "Hello!\nWow!" // escape character
	d = `Hello!\nWow!` // not having escape character
	fmt.Printf("%s\n%s\n%s\n%s",a,b,c,d)
}
