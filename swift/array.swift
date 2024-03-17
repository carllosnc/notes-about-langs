// array
var arr = [1,2,3,4,5]

// type array
var arr1: [Int] = [1,2,3,4,5]

// add elements
arr.append(6)

// remove elements
arr.remove(at: 0)

// count elements
arr.count

// check if empty
arr.isEmpty

// get element
arr[0]

// set element
arr[0] = 10

//loop
for i in arr {
    print(i)
}

//map
arr.map { (i) -> Int in
    return i * 2
}

//filter
arr.filter { (i) -> Bool in
    return i % 2 == 0
}

//reduce
arr.reduce(0) { (result, i) -> Int in
    return result + i
}
