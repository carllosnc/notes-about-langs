class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var person = Person(name: "John", age: 25)

print("Name: \(person.name)")
print("Age: \(person.age)")
