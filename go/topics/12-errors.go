package topics

import "errors"

//add two numbers with error
func add(x, y int) (int, error) {
	sum := x + y

	if sum < 0 {
		return 0, errors.New("sum is negative")
	}

	return sum, nil
}

func Errors() {
	sum, err := add(1, -2)

	if err != nil {
		println(err.Error())
	}

	println(sum)
}
