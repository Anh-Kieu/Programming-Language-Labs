package main
import "fmt"

type Car struct{
	brand string
	wheels int
}

func (f Car) ride(){
	fmt.Printf("I'm riding on a %d wheel %s\n", f.wheels, f.brand)
}

type Truck struct{
	Car
}

func main(){
	var f = Car{"Toyota", 4}
	f.ride()
	var truck = Truck{Car{"UFO", 1}}
	truck.ride()
}