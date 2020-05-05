package main

import "fmt"

type student struct{
	gpa float32
	sleep bool
}

func main(){
	me := student{gpa : 3.8, sleep: false}
	fmt.Println("My gpa is ", me.gpa)
	fmt.Println("I sleep 8 hours per night ", me.sleep)
}