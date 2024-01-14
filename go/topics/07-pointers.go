package topics

func Pointers() {
	x := 1
	y := &x

	println(x)
	println(y)  //address
	println(*y) //value
}

// function that expects a pointer
func Pointer(a *int) {
	*a = 2
}

// function that returns a pointer
func PointerReturn() *int {
	a := 1
	return &a
}

// function that expects a pointer to a pointer
func PointerToPointer(a **int) {
	**a = 2
}
