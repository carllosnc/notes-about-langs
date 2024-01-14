package topics

func Arrays() {
	//array with 10 elements
	var a [10]int = [10]int{1, 2, 3, 4, 5, 6, 7, 8, 9}

	//loop a
	for i := 0; i < len(a); i++ {
		println(a[i])
	}

	//loop using range
	for i, v := range a {
		println(i, v)
	}
}
