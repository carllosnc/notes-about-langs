package topics

func ControlStructures() {
	a := 1
	b := 2

	//if statement
	if a == 1 {
		println("a is 1")
	} else {
		println("a is not 1")
	}

	//if statement with assignment
	if c := a + b; c == 3 {
		println("c is 3")
	} else {
		println("c is not 3")
	}

	//switch statement
	switch a {
	case 1:
		println("a is 1")
	case 2:
		println("a is 2")
	default:
		println("a is not 1 or 2")
	}

	//switch statement with assignment
	switch c := a + b; c {
	case 3:
		println("c is 3")
	case 4:
		println("c is 4")
	default:
		println("c is not 3 or 4")
	}
}
