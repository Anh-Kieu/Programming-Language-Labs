package main

import "fmt"

type Cryable interface {
	cry()
}

func makeCry(c Cryable) {
	fmt.Println(c)
	c.cry()
}

type Dog struct {
	nickname string
}

func (d Dog) cry() {
	fmt.Println("Oh no,", d.nickname, "is sad! Doggo needs hooman")
}

type Human struct {
	name string
}

func (h Human) cry() {
	fmt.Println("Oh no,", h.name, "is sad! Human needs doggo!")
}

func main() {
	h := Human{"Nancy"}
	d := Dog{ "Doge"}
	makeCry(h)
	makeCry(d)
}