//create an set
var set: Set = [1, 2, 3, 3, 4, 5, 5]

//print set length
print(set.count) // 5

//check if empty
print(set.isEmpty) // false

//add element
set.insert(6)

//remove element
set.remove(1)

//loop
for i in set {
    print(i)
}

//map
let mappedSet = set.map { (i) -> Int in
    return i * 2
} // [4, 6, 8, 10, 12]

//filter
let filteredSet = set.filter { (i) -> Bool in
    return i % 2 == 0
} // [2, 4, 6]

//reduce
let reducedSet = set.reduce(0) { (result, i) -> Int in
    return result + i
}// 20
