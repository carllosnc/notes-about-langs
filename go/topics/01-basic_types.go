package topics

func BasicTypes() {
	//a string
	var s string = "Hello World"

	//a boolean
	var b bool = true

	//an integer
	var i int = 1

	//a float
	var f float32 = 1.0

	//a complex number
	var c complex64 = 1 + 1i

	//a byte
	var by byte = 1

	//a rune
	var r rune = 'a'

	//a pointer
	var p *int = &i

	//an array
	var a [1]int = [1]int{1}

	//a slice
	var sl []int = []int{1}

	//a map
	var m map[string]int = map[string]int{"one": 1}

	//a struct
	var st struct{ one int } = struct{ one int }{1}

	//a function
	var fn func() = func() {}

	//an interface
	var it interface{} = 1

	//a channel
	var ch chan int = make(chan int)

	//a constant
	const myConst = 1

	_ = s
	_ = b
	_ = i
	_ = f
	_ = c
	_ = by
	_ = r
	_ = p
	_ = a
	_ = sl
	_ = m
	_ = st
	_ = fn
	_ = it
	_ = ch
	_ = myConst
}
