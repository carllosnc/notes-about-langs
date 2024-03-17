//simple struct
struct Person {
    var name: String
    var age: Int
}

var p = Person(
    name: "John",
    age: 25
)

//print the properties of the instance
print(p.name) //John
print(p.age) //25

//change the properties of the instance
p.name = "Bob"
p.age = 30

//structs with default values
struct Employee {
    var name: String = "Unknown"
    var age: Int = 0
}

//structs with computed properties
struct Circle {
    var radius: Double = 0.0
    var area: Double {
        return 3.14 * radius * radius
    }
}

var c = Circle(radius: 5.0)
print(c.area) //78.5

//structs with property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var p = Progress(task: "Loading data", amount: 0)
p.amount = 30
p.amount = 80
p.amount = 100

//structs with property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var p = Progress(task: "Loading data", amount: 0)
p.amount = 30
p.amount = 80
p.amount = 100

//structs with type property
struct Circle {
    static let pi = 3.14
    var radius: Double
    var area: Double {
        return Circle.pi * radius * radius
    }
}
print(Circle.pi) //3.14
var c = Circle(radius: 5.0)
print(c.area) //78.5

//structs with type method
struct Math {
    static func abs(number: Int) -> Int {
        if number < 0 {
            return -number
        }
        return number
    }
}
print(Math.abs(number: -35)) //35
print(Math.abs(number: 40)) //40

//structs with access control
struct Person {
    var name: String
    private var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func display() {
        print("Name: \(name), Age: \(age)")
    }
}

var p = Person(name: "John", age: 25)
p.display() //Name: John, Age: 25
print(p.name) //John
print(p.age) //Error: 'age' is inaccessible due to 'private' protection level
