package topics

type Number interface {
	int64 | float64
}

func SumItems[K comparable, V Number](m map[K]V) V {
	var s V

	for _, v := range m {
		s += v
	}

	return s
}

func PrintItems[K string | int | float64](item K) {
	println(item)
}

func Generics() {
	ints := map[string]int64{"a": 1, "b": 2, "c": 3}
	floats := map[string]float64{"a": 1.1, "b": 2.2, "c": 3.3}

	println(SumItems[string, int64](ints))
	println(SumItems[string, float64](floats))
}
