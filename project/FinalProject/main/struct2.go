package main

import "fmt"

type Student struct {
	gpa float32
	fatigue int
	sleep func()
}

func main() {
	s := Student{
		3.4,
		2,
		func() { fmt.Println("Sleeping!") },
	}
	s.sleep()
	fmt.Println(s.gpa)
}
