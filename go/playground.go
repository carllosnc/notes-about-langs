package main

func main() {
	//explicity type declaration
	var age int = 10
	var message string = "hello world"
	var isTrue bool = true

	//short hand declaration
	x := 1

	//type interface omit the type
	var score = 9.5
	var price = 19.99
	var lang = "Go"

	//multuiple varible declaration
	var (
		firstName string
		lastName  string
	)

	//multipe variables with initialization
	var h, g int = 10, 20

	_ = h
	_ = g
	_ = x
	_ = age
	_ = message
	_ = isTrue
	_ = score
	_ = price
	_ = lang
	_ = firstName
	_ = lastName
}
