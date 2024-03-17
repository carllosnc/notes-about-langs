//function
func printName(name: String){
    print("Hello, \(name)")
}

//function with return value
func add(a: Int, b: Int) -> Int {
    return a + b
}

//function with multiple return values
func getMinMax(arr: [Int]) -> (min: Int, max: Int) {
    var min = arr[0]
    var max = arr[0]
    for value in arr {
        if value < min {
            min = value
        } else if value > max {
            max = value
        }
    }
    return (min, max)
}

//function with variadic parameters
func sum(numbers: Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}

//function with default parameter value
func greet(name: String, msg: String = "Good morning!") {
    print("Hello, \(name), \(msg)")
}

//function with inout parameters
//inout parameters can be modified within the function
//and the changes are reflected in the original value
func swap(a: inout Int, b: inout Int) {
    let temp = a
    a = b
    b = temp
}

//function with return value as optional
func divide(a: Int, b: Int) -> Int? {
    if b == 0 {
        return nil
    }
    return a / b
}

//function with nested function
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }

    return backward ? stepBackward : stepForward
}

//function with function as parameter
func printResult(_ function: (Int, Int) -> Int, a: Int, b: Int) {
    let result = function(a, b)
    print("Result: \(result)")
}

//function with function as return value
func stepForward(input: Int) -> Int { return input + 1 }
func stepBackward(input: Int) -> Int { return input - 1 }
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

