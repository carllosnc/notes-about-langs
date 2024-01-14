package topics

func Strings() {

	a := "hello"
	b := "world"

	//concatenate strings
	c := a + " " + b

	//loop string
	for i := 0; i < len(c); i++ {
		println(c[i])
	}

	println(c)
}

func Runes() {
	a := 'a'
	b := 'b'

	//concatenate runes
	c := string(a) + string(b)

	//loop string
	for i := 0; i < len(c); i++ {
		println(c[i])
	}

	println(c)
}
