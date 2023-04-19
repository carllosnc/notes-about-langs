package com.example.topics.classes

class Person2(
    val name: String,
    val lastname: String,
    val age: Int
)

fun Person2.foo() {
    println("Hello $name")
}
