package main
import "fmt"
import "regexp"

func main() {
	var r, _ = regexp.Compile("[1..9]*[abc]+")
	var l = "2aaa"
	var l1 = "ad"
	fmt.Println(r.MatchString(l))
	fmt.Println(r.MatchReader(l1))
}