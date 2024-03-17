//for loop
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

//while loop
var index = 1
while index <= 5 {
    print("\(index) times 5 is \(index * 5)")
    index += 1
}

//repeat-while loop
index = 1
repeat {
    print("\(index) times 5 is \(index * 5)")
    index += 1
} while index <= 5