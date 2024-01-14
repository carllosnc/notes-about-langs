package topics

import "fmt"

//car type
type Car struct {
	Make  string
	Model string
	Year  int
}

//person type that have a car
type Person struct {
	Name  string
	Age   int
	Langs []string
	Car   Car
}

type hero struct {
	Person     //this is a embedded struct
	superpower string
}

func Describe(p hero) string {
	return fmt.Sprintf("%+v", p)
}

func Structs() {
	//new hero
	p := hero{
		Person: Person{
			Name:  "John",
			Age:   30,
			Langs: []string{"English", "Spanish"},
			Car: Car{
				Make:  "Ford",
				Model: "F150",
				Year:  2015,
			},
		},
		superpower: "Flying",
	}
	//describe person
	println(Describe(p))
}
