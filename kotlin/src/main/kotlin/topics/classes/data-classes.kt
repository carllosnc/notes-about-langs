package com.example.topics.classes.data

//example of dataclass
data class Person(val name: String, val age: Int)

fun main() {
    val person = Person("John", 21)
    val (name, age) = person

    val newPerson = person.copy(age = 22)

    println(newPerson)
    
    println("name: $name, age: $age")

    println(person.toString())
}