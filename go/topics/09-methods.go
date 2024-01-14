package topics

type rect struct {
	width, height int
}

// method
func (r *rect) area() int {
	return r.width * r.height
}

// method
func (r *rect) perim() int {
	return 2*r.width + 2*r.height
}

func Methods() {
	r := rect{width: 10, height: 5}

	println(r.area())
	println(r.perim())
}
