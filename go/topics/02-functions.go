package topics

// function to add two integers
func Add(a int, b int) int {
	return a + b
}

// function to add infinite integers
func AddInfinite(a ...int) int {
	var sum int

	for _, v := range a {
		sum += v
	}
	return sum
}

// function with callback
func Callback(callback func(int, int) int) int {
	return callback(1, 2)
}

// function with callback and variadic arguments
func CallbackVariadic(callback func(...int) int) int {
	return callback(1, 2, 3, 4, 5)
}

// function with a cloure
func Closure() func() int {
	i := 0
	return func() int {
		i++
		return i
	}
}

// auto invoke function
func AutoInvoke() {
	func(text string) {
		println(text)
	}("Hello world")
}

//function with multiple return values
func MultipleReturn() (int, int) {
	return 1, 2
}
