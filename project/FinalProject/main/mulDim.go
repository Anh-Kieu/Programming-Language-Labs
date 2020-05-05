package main

import "fmt"

func main() {
	var arr [3][4] int
	arr = [3][4] int {{1,2,2,1}, {1,2,2,1}, {1,2,2,1}}
	var arr2 [1][2][3] int
	fmt.Println(arr)
	fmt.Println(arr2)

	var arr3 [][]int
	arr3 = [][]int {{1,2}, {1}, {0}}
	fmt.Println(arr3)
}
