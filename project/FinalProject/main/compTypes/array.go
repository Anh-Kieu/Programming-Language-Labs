package main
import "fmt"

func main(){
	var a [10]int // array
	fmt.Println("array: ", a)

	a = [10]int{2, 3, 5, 7, 11, 13}
	fmt.Println(a)
}
