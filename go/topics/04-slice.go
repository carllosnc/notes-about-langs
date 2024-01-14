package topics

func Slices() {
	//slice with 10 elements
	var a []int = []int{1, 2, 3, 4, 5, 6, 7, 8, 9}

	//append items to slice
	a = append(a, 10)
	a = append(a, 11, 12, 13)

	//loop a
	for i := 0; i < len(a); i++ {
		println(a[i])
	}

	//loop using range
	for i, v := range a {
		println(i, v)
	}

	//map slice to double values
	b := make([]int, len(a))

	for i, v := range a {
		b[i] = v * 2
	}
}
