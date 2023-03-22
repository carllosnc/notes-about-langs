package com.example.topics.classes.interfaces

interface Human {
    val name: String
    val age: Int
    fun printInfo()
}

class Person(
    override val name: String,
    override val age: Int,
) : Human {
    override fun printInfo() {
        println("Name: $name, Age: $age")
    }
}

fun main() {
    val person = Person("John", 30)
    person.printInfo()

    val hero = object : Human {
        override val name: String = "Batman"
        override val age: Int = 30
        val superpower: String = "Money"
        override fun printInfo() {
            println("Name: $name, Age: $age, Superpower: $superpower")
        }
    }
}